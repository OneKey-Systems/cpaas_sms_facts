package mx.onekey.dev.cpaas_sms_facts

import org.springframework.beans.factory.annotation.Value
import org.springframework.context.annotation.Bean
import org.springframework.context.annotation.Configuration
import org.springframework.data.jpa.repository.config.EnableJpaRepositories
import org.springframework.orm.jpa.JpaTransactionManager
import org.springframework.orm.jpa.LocalContainerEntityManagerFactoryBean
import org.springframework.orm.jpa.vendor.HibernateJpaVendorAdapter
import org.springframework.transaction.PlatformTransactionManager
import org.springframework.transaction.annotation.EnableTransactionManagement
import java.util.*
import javax.persistence.EntityManagerFactory
import javax.sql.DataSource

@Configuration
@EnableJpaRepositories
@EnableTransactionManagement
class DatabaseConfig {

    @Value("\${spring.jpa.hibernate.ddl-auto}")
    private val ddlMode: String? = null

    @Bean
    fun entityManagerFactory(dataSource: DataSource): LocalContainerEntityManagerFactoryBean {
        val vendorAdapter = HibernateJpaVendorAdapter()
        vendorAdapter.setGenerateDdl(true)
        val factory = LocalContainerEntityManagerFactoryBean()
        factory.jpaVendorAdapter = vendorAdapter
        factory.setJpaProperties(hibernateProperties())
        factory.setPackagesToScan("mx.onekey.dev.cpaas_sms_facts")
        factory.dataSource = dataSource
        return factory
    }

    @Bean
    fun transactionManager(entityManagerFactory: EntityManagerFactory?): PlatformTransactionManager {
        val txManager = JpaTransactionManager()
        txManager.entityManagerFactory = entityManagerFactory
        return txManager
    }

    fun hibernateProperties(): Properties {
        // For whatever reason this property does not seem to be set from Spring's Boot autoconfiguration.
        val properties = Properties()
        properties["hibernate.hbm2ddl.auto"] = ddlMode
        return properties
    }
}