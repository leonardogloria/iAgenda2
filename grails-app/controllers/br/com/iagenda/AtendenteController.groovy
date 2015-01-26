package br.com.iagenda



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AtendenteController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Atendente.list(params), model:[atendenteInstanceCount: Atendente.count()]
    }

    def show(Atendente atendenteInstance) {
        respond atendenteInstance
    }

    def create() {
        respond new Atendente(params)
    }

    @Transactional
    def save(Atendente atendenteInstance) {
        if (atendenteInstance == null) {
            notFound()
            return
        }

        if (atendenteInstance.hasErrors()) {
            respond atendenteInstance.errors, view:'create'
            return
        }

        atendenteInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'atendente.label', default: 'Atendente'), atendenteInstance.id])
                redirect atendenteInstance
            }
            '*' { respond atendenteInstance, [status: CREATED] }
        }
    }

    def edit(Atendente atendenteInstance) {
        respond atendenteInstance
    }

    @Transactional
    def update(Atendente atendenteInstance) {
        if (atendenteInstance == null) {
            notFound()
            return
        }

        if (atendenteInstance.hasErrors()) {
            respond atendenteInstance.errors, view:'edit'
            return
        }

        atendenteInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Atendente.label', default: 'Atendente'), atendenteInstance.id])
                redirect atendenteInstance
            }
            '*'{ respond atendenteInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Atendente atendenteInstance) {

        if (atendenteInstance == null) {
            notFound()
            return
        }

        atendenteInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Atendente.label', default: 'Atendente'), atendenteInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'atendente.label', default: 'Atendente'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
