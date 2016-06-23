package loja

import grails.plugin.springsecurity.annotation.Secured

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
@Secured('isAuthenticated()')
class ImagemProdutoController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ImagemProduto.list(params), model:[imagemProdutoCount: ImagemProduto.count()]
    }

    def show(ImagemProduto imagemProduto) {
        respond imagemProduto
    }

    def create() {
        respond new ImagemProduto(params)
    }

    @Transactional
    def save(ImagemProduto imagemProduto) {
        if (imagemProduto == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (imagemProduto.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond imagemProduto.errors, view:'create'
            return
        }

        imagemProduto.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'imagemProduto.label', default: 'ImagemProduto'), imagemProduto.id])
                redirect imagemProduto
            }
            '*' { respond imagemProduto, [status: CREATED] }
        }
    }

    def edit(ImagemProduto imagemProduto) {
        respond imagemProduto
    }

    @Transactional
    def update(ImagemProduto imagemProduto) {
        if (imagemProduto == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        if (imagemProduto.hasErrors()) {
            transactionStatus.setRollbackOnly()
            respond imagemProduto.errors, view:'edit'
            return
        }

        imagemProduto.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'imagemProduto.label', default: 'ImagemProduto'), imagemProduto.id])
                redirect imagemProduto
            }
            '*'{ respond imagemProduto, [status: OK] }
        }
    }

    @Transactional
    def delete(ImagemProduto imagemProduto) {

        if (imagemProduto == null) {
            transactionStatus.setRollbackOnly()
            notFound()
            return
        }

        imagemProduto.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'imagemProduto.label', default: 'ImagemProduto'), imagemProduto.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'imagemProduto.label', default: 'ImagemProduto'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
