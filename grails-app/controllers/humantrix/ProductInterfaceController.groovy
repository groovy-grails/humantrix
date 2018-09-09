package humantrix



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ProductInterfaceController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ProductInterface.list(params), model:[productInterfaceInstanceCount: ProductInterface.count()]
    }

    def show(ProductInterface productInterfaceInstance) {
        respond productInterfaceInstance
    }

    def create() {
        respond new ProductInterface(params)
    }

    @Transactional
    def save(ProductInterface productInterfaceInstance) {
        if (productInterfaceInstance == null) {
            notFound()
            return
        }

        if (productInterfaceInstance.hasErrors()) {
            respond productInterfaceInstance.errors, view:'create'
            return
        }

        productInterfaceInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'productInterface.label', default: 'ProductInterface'), productInterfaceInstance.id])
                redirect productInterfaceInstance
            }
            '*' { respond productInterfaceInstance, [status: CREATED] }
        }
    }

    def edit(ProductInterface productInterfaceInstance) {
        respond productInterfaceInstance
    }

    @Transactional
    def update(ProductInterface productInterfaceInstance) {
        if (productInterfaceInstance == null) {
            notFound()
            return
        }

        if (productInterfaceInstance.hasErrors()) {
            respond productInterfaceInstance.errors, view:'edit'
            return
        }

        productInterfaceInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ProductInterface.label', default: 'ProductInterface'), productInterfaceInstance.id])
                redirect productInterfaceInstance
            }
            '*'{ respond productInterfaceInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ProductInterface productInterfaceInstance) {

        if (productInterfaceInstance == null) {
            notFound()
            return
        }

        productInterfaceInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ProductInterface.label', default: 'ProductInterface'), productInterfaceInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'productInterface.label', default: 'ProductInterface'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
