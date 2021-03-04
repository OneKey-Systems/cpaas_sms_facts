package mx.onekey.dev.cpaas_sms_facts.repositories

import mx.onekey.dev.cpaas_sms_facts.entities.RandomFact
import org.springframework.data.repository.CrudRepository
import org.springframework.data.repository.PagingAndSortingRepository

interface RandomFactRepository : CrudRepository<RandomFact, Long>, PagingAndSortingRepository<RandomFact, Long> {}