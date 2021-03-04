package mx.onekey.dev.cpaas_sms_facts.endpoints

import com.zang.api.inboundxml.ZangInboundXml
import com.zang.api.inboundxml.elements.Response
import com.zang.api.inboundxml.elements.Say
import com.zang.api.inboundxml.elements.Sms
import com.zang.api.inboundxml.elements.enums.Language
import com.zang.api.inboundxml.elements.enums.Voice
import mx.onekey.dev.cpaas_sms_facts.repositories.RandomFactRepository
import org.springframework.data.domain.PageRequest
import org.springframework.http.MediaType
import org.springframework.web.bind.annotation.*
import kotlin.random.Random

@RestController
@RequestMapping("/inbound")
class InboundXMLEndpoint(val randomFactRepository: RandomFactRepository) {

    private fun fetchRandomFact(): String {
        val dataSize = randomFactRepository.count()
        val fact = randomFactRepository.findAll(PageRequest.of(Random.nextInt(0, (dataSize - 1).toInt()), 1))
        return ("Gracias por contactarnos. Esto es un dato curioso: "
                + fact.content[0].message
                + " Nos vemos, adiós!")
    }

    @PostMapping("/sms",
            consumes = [MediaType.APPLICATION_FORM_URLENCODED_VALUE],
            produces = [MediaType.TEXT_XML_VALUE, MediaType.APPLICATION_XML_VALUE])
    fun processSms(@RequestParam postBody: Map<String, String>): Response {
        return ZangInboundXml.builder()
                .sms(
                        Sms.builder()
                                .setText(fetchRandomFact())
                                .build())
                .build()
    }

    @PostMapping("/call",
            consumes = [MediaType.APPLICATION_FORM_URLENCODED_VALUE],
            produces = [MediaType.TEXT_XML_VALUE, MediaType.APPLICATION_XML_VALUE])
    fun processCall(@RequestParam postBody: Map<String, String>): Response {
        return ZangInboundXml.builder()
                .say(
                        Say.builder().
                            setLanguage(Language.ES).
                            setVoice(Voice.FEMALE).
                            setText(fetchRandomFact()).
                            build())
                .build()
    }

}