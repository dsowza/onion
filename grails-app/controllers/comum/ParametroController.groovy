package comum

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
@Secured('isAuthenticated()')
class ParametroController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Parametro.list(params), model:[parametroCount: Parametro.count()]
    }

    def show(Parametro parametro) {
        respond parametro
    }

    def create() {
        respond new Parametro(params)
    }

    @Transactional
    def save(Parametro parametro) {
        if (parametro == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (parametro.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond parametro.errors, view:'create'
            return
        }

        parametro.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'parametro.label', default: 'Parametro'), parametro.id])
                redirect parametro
            }
            '*' { respond parametro, [status: CREATED] }
        }
    }

    def edit(Parametro parametro) {
        respond parametro
    }

    @Transactional
    def update(Parametro parametro) {
        if (parametro == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (parametro.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond parametro.errors, view:'edit'
            return
        }

        parametro.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'parametro.label', default: 'Parametro'), parametro.id])
                redirect parametro
            }
            '*'{ respond parametro, [status: OK] }
        }
    }

    @Transactional
    def delete(Parametro parametro) {

        if (parametro == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        parametro.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'parametro.label', default: 'Parametro'), parametro.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'parametro.label', default: 'Parametro'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
