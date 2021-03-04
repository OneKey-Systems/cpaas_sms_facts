package mx.onekey.dev.cpaas_sms_facts.entities;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlElement;
import javax.xml.bind.annotation.XmlRootElement;

/**
 * InboundXML representation.
 */
@XmlRootElement(name = "Response")
@XmlAccessorType(XmlAccessType.FIELD)
public class InboundSmsResponse {

    public InboundSmsResponse() {}

    public InboundSmsResponse(String message) { this.message = message; }

    @XmlElement(name = "Sms")
    private String message;

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }
}