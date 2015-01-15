package br.com.iagenda


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class TipoEstabelecimentoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond TipoEstabelecimento.list(params), model: [tipoEstabelecimentoInstanceCount: TipoEstabelecimento.count()]
    }

    def show(TipoEstabelecimento tipoEstabelecimentoInstance) {
        respond tipoEstabelecimentoInstance
    }

    def create() {
        respond new TipoEstabelecimento(params)
    }

    @Transactional
    def save(TipoEstabelecimento tipoEstabelecimentoInstance) {
        if (tipoEstabelecimentoInstance == null) {
            notFound()
            return
        }

        if (tipoEstabelecimentoInstance.hasErrors()) {
            respond tipoEstabelecimentoInstance.errors, view: 'create'
            return
        }

        tipoEstabelecimentoInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'tipoEstabelecimento.label', default: 'TipoEstabelecimento'), tipoEstabelecimentoInstance.id])
                redirect tipoEstabelecimentoInstance
            }
            '*' { respond tipoEstabelecimentoInstance, [status: CREATED] }
        }
    }

    def edit(TipoEstabelecimento tipoEstabelecimentoInstance) {
        respond tipoEstabelecimentoInstance
    }

    @Transactional
    def update(TipoEstabelecimento tipoEstabelecimentoInstance) {
        if (tipoEstabelecimentoInstance == null) {
            notFound()
            return
        }

        if (tipoEstabelecimentoInstance.hasErrors()) {
            respond tipoEstabelecimentoInstance.errors, view: 'edit'
            return
        }

        tipoEstabelecimentoInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'TipoEstabelecimento.label', default: 'TipoEstabelecimento'), tipoEstabelecimentoInstance.id])
                redirect tipoEstabelecimentoInstance
            }
            '*' { respond tipoEstabelecimentoInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(TipoEstabelecimento tipoEstabelecimentoInstance) {

        if (tipoEstabelecimentoInstance == null) {
            notFound()
            return
        }

        tipoEstabelecimentoInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'TipoEstabelecimento.label', default: 'TipoEstabelecimento'), tipoEstabelecimentoInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'tipoEstabelecimento.label', default: 'TipoEstabelecimento'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
