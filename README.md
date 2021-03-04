# CPaaS Random Facts
This is a very simple application that is meant to serve as a proof of concept as to how one would produce dynamic InboundXML for their Avaya CPaas applications.
Here is a brief explanation of what it does, how it does it and any problems met during its development.

# What it does
This application answers phone calls and text messages with random facts. Avaya CPaaS answers phone calls or replies to text messages while
the server tells it what to do. It does this by using Avaya's Inbound XML.

# How it does it
The server listens for POST requests to certain endpoints (both the method and URL to call can be configured trough the CPaas dashboard) and replies to them with
an XML document which specifically models an InboundXML response. This InboundXML document tells CPaaS what to do. 

The server stores all random facts in a database and upon being called selects a random one. It then writes an
InboundXML document which tells Avaya to answer the call/text with the previously selected random fact.

# Technical Details
## Architecture
The server was developed with a mix of Kotlin/Java using Spring Boot. Spring Boot was chosen since it takes away most of the configuration boilerplate and
Spring JPA has magical repositories. Since Spring Boot was chosen Tomcat is the server (embedded) and Hibernate was used for the ORM. To generate the InboundXML
the Avaya Java CPaaS library was used. In order to use this library you need to download the code, build it and install it to your local Maven repository. 

The database used is Postgresql altough any other database compatible with Spring would work. The server is run as a service (with systemd units) on a Linux VM 
and it is binded to the localhost interface which means no one can access the server directly. To access it you must go trough a reverse proxy (Nginx) sitting in
front of the server. Nginx is in charge of handling the SSL certs. 

## Avaya's requests
Depending on the method you chose for your endpoint Avaya will either make a POST or GET request to your web application. In this case I set it as POST so I get the
data submitted as a form with `Content-Type: application/x-www-form-urlencoded`. The specific parameters sent can be consulted on the CPaas Docs.

### Pitfall - Content negotiation
When the application was first deployed, CPaaS could not parse the server's response. An error notification would appear on the CPaaS dashboard and the calls/text
would fail. This was caused due to a failure when negotiating content. Our server produced `text/xml` but Avaya only accepted `application/xml`. This resulted in our
server sending a 406 error. 

### Debugging issues
At the time of writing, Avaya's documentation is not too technical (for example they don't explicitly state the `Content-Type` their requests have or which
content type they accept), and the error notifications are not extremely helpful since you can't - or at least I did not know how to - see the server's
answer.

In order to debug this errors and others on a production environment I resorted to using `tshark` to capture packets and later on downloaded them (with SFTP)
to my development machine, where I could open the captured files with Wireshark. Obviously reading your server logs also helps, but Spring only showed
there was a failure during content negotiation and I had to explicitly check the HTTP packets in order to see why. 

The fact that our Spring server is sitting behind Nginx also helps debugging since all I had to do was capture packets on the loopback interface and
did not have to worry about decrypting them, since they were all http instead of https (no sense in using http for packets sent to the loopback interface
since they don't ever leave the computer).

# Feedback
If you have any comments or feedback feel free to share them with us, we are always interested in hearing from others using Avaya technologies!
