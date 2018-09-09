package humantrix



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class ProductSupportController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond ProductSupport.list(params), model:[productSupportInstanceCount: ProductSupport.count()]
    }

    def show(ProductSupport productSupportInstance) {
        respond productSupportInstance
    }

    def create() {
        respond new ProductSupport(params)
    }

    @Transactional
    def save(ProductSupport productSupportInstance) {
        if (productSupportInstance == null) {
            notFound()
            return
        }

        if (productSupportInstance.hasErrors()) {
            respond productSupportInstance.errors, view:'create'
            return
        }

        productSupportInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'productSupport.label', default: 'ProductSupport'), productSupportInstance.id])
                redirect productSupportInstance
            }
            '*' { respond productSupportInstance, [status: CREATED] }
        }
    }

    def edit(ProductSupport productSupportInstance) {
        respond productSupportInstance
    }

    @Transactional
    def update(ProductSupport productSupportInstance) {
        if (productSupportInstance == null) {
            notFound()
            return
        }

        if (productSupportInstance.hasErrors()) {
            respond productSupportInstance.errors, view:'edit'
            return
        }

        productSupportInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'ProductSupport.label', default: 'ProductSupport'), productSupportInstance.id])
                redirect productSupportInstance
            }
            '*'{ respond productSupportInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(ProductSupport productSupportInstance) {

        if (productSupportInstance == null) {
            notFound()
            return
        }

        productSupportInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'ProductSupport.label', default: 'ProductSupport'), productSupportInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'productSupport.label', default: 'ProductSupport'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
