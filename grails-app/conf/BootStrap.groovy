import br.com.iagenda.TipoEstabelecimento

class BootStrap {

    def init = { servletContext ->
        TipoEstabelecimento tipoEstabelecimento = new TipoEstabelecimento(tipo: "Consultório")
        tipoEstabelecimento.save flush: true, failOnError: true

        TipoEstabelecimento tipoEstabelecimento2 = new TipoEstabelecimento(tipo: "Salão")
        tipoEstabelecimento2.save flush: true, failOnError: true
    }
    def destroy = {
    }
}
