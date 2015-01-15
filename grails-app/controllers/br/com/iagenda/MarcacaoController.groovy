package br.com.iagenda



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class MarcacaoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Marcacao.list(params), model:[marcacaoInstanceCount: Marcacao.count()]
    }

    def show(Marcacao marcacaoInstance) {
        respond marcacaoInstance
    }

    def create() {
        respond new Marcacao(params)
    }

    @Transactional
    def save(Marcacao marcacaoInstance) {
        if (marcacaoInstance == null) {
            notFound()
            return
        }

        if (marcacaoInstance.hasErrors()) {
            respond marcacaoInstance.errors, view:'create'
            return
        }

        marcacaoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'marcacao.label', default: 'Marcacao'), marcacaoInstance.id])
                redirect marcacaoInstance
            }
            '*' { respond marcacaoInstance, [status: CREATED] }
        }
    }

    def edit(Marcacao marcacaoInstance) {
        respond marcacaoInstance
    }

    @Transactional
    def update(Marcacao marcacaoInstance) {
        if (marcacaoInstance == null) {
            notFound()
            return
        }

        if (marcacaoInstance.hasErrors()) {
            respond marcacaoInstance.errors, view:'edit'
            return
        }

        marcacaoInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Marcacao.label', default: 'Marcacao'), marcacaoInstance.id])
                redirect marcacaoInstance
            }
            '*'{ respond marcacaoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Marcacao marcacaoInstance) {

        if (marcacaoInstance == null) {
            notFound()
            return
        }

        marcacaoInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Marcacao.label', default: 'Marcacao'), marcacaoInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'marcacao.label', default: 'Marcacao'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
