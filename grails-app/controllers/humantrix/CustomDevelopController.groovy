package humantrix



import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class CustomDevelopController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond CustomDevelop.list(params), model:[customDevelopInstanceCount: CustomDevelop.count()]
    }

    def show(CustomDevelop customDevelopInstance) {
        respond customDevelopInstance
    }

    def create() {
        respond new CustomDevelop(params)
    }

    @Transactional
    def save(CustomDevelop customDevelopInstance) {
        if (customDevelopInstance == null) {
            notFound()
            return
        }

        if (customDevelopInstance.hasErrors()) {
            respond customDevelopInstance.errors, view:'create'
            return
        }

        customDevelopInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'customDevelop.label', default: 'CustomDevelop'), customDevelopInstance.id])
                redirect customDevelopInstance
            }
            '*' { respond customDevelopInstance, [status: CREATED] }
        }
    }

    def edit(CustomDevelop customDevelopInstance) {
        respond customDevelopInstance
    }

    @Transactional
    def update(CustomDevelop customDevelopInstance) {
        if (customDevelopInstance == null) {
            notFound()
            return
        }

        if (customDevelopInstance.hasErrors()) {
            respond customDevelopInstance.errors, view:'edit'
            return
        }

        customDevelopInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'CustomDevelop.label', default: 'CustomDevelop'), customDevelopInstance.id])
                redirect customDevelopInstance
            }
            '*'{ respond customDevelopInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(CustomDevelop customDevelopInstance) {

        if (customDevelopInstance == null) {
            notFound()
            return
        }

        customDevelopInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'CustomDevelop.label', default: 'CustomDevelop'), customDevelopInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'customDevelop.label', default: 'CustomDevelop'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
