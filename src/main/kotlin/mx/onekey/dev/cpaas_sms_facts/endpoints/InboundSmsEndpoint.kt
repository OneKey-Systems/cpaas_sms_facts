package mx.onekey.dev.cpaas_sms_facts.endpoints

import mx.onekey.dev.cpaas_sms_facts.entities.InboundSmsResponse
import org.springframework.http.MediaType
import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.*

@RestController
@RequestMapping("/sms/inbound")
class InboundSmsEndpoint() {

    @PostMapping("/process",
            consumes = [MediaType.APPLICATION_FORM_URLENCODED_VALUE],
            produces = [MediaType.TEXT_XML_VALUE])
    //TODO Fetch random message from db
    fun processSms(@RequestParam postBody: Map<String, String>) = InboundSmsResponse("Hi my dude")
}