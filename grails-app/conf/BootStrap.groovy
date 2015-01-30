import br.com.iagenda.SecRole
import br.com.iagenda.SecUser
import br.com.iagenda.SecUserSecRole
import br.com.iagenda.Servico
import br.com.iagenda.TipoEstabelecimento
import br.com.iagenda.Usuario
import br.com.iagenda.enums.Sexo
import org.springframework.context.annotation.Role

class BootStrap {
    def springSecurityService
    def init = { servletContext ->
        TipoEstabelecimento tipoEstabelecimento = new TipoEstabelecimento(tipo: "Consultório")
        tipoEstabelecimento.save flush: true, failOnError: true

        TipoEstabelecimento tipoEstabelecimento2 = new TipoEstabelecimento(tipo: "Salão")
        tipoEstabelecimento2.save flush: true, failOnError: true

        def Servico servico = new Servico(nome: 'Corte Simples',tempoMedio: 3 )
        servico.save flush: true, failOnError: true

        def adminRole = new SecRole(authority: 'ROLE_ADMIN').save(flush: true)
        def userRole = new SecRole(authority: 'ROLE_USER').save(flush: true)

        def usuario = new Usuario(cpf: '12496329784', nomeCompleto: 'Leonardo Gloria',
                sexo: Sexo.MASCULINO, username: 'admin', password: 'admin', email: 'leonardo.gloria@globo.com')
        usuario.save flush: true, failOnError: true

        SecUserSecRole.create usuario, adminRole, true

        assert SecUser.count() == 1
        assert SecRole.count() == 2
        assert SecUserSecRole.count() == 1

    }
    def destroy = {
    }
}
