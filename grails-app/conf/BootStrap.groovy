import br.com.iagenda.Cliente
import br.com.iagenda.SecRole
import br.com.iagenda.SecUser
import br.com.iagenda.SecUserSecRole
import br.com.iagenda.TipoEstabelecimento
import br.com.iagenda.enums.Sexo
import org.springframework.context.annotation.Role

class BootStrap {
    def springSecurityService
    def init = { servletContext ->
        TipoEstabelecimento tipoEstabelecimento = new TipoEstabelecimento(tipo: "Consultório")
        tipoEstabelecimento.save flush: true, failOnError: true

        TipoEstabelecimento tipoEstabelecimento2 = new TipoEstabelecimento(tipo: "Salão")
        tipoEstabelecimento2.save flush: true, failOnError: true

        def adminRole = new SecRole(authority: 'ROLE_ADMIN').save(flush: true)
        def userRole = new SecRole(authority: 'ROLE_USER').save(flush: true)

        def cliente = new Cliente(cpf: '12496329784', nomeCompleto: 'Leonardo Gloria',sexo: Sexo.MASCULINO, )
        //cliente.save flush: true,failOnError: true


        def testUser = new SecUser(username: 'me', password: 'password',cliente: cliente,email: 'leonardo.gloria@globo.com',)
        testUser.save(flush: true)

        SecUserSecRole.create testUser, adminRole, true

        assert SecUser.count() == 1
        assert SecRole.count() == 2
        assert SecUserSecRole.count() == 1


    }
    def destroy = {
    }
}
