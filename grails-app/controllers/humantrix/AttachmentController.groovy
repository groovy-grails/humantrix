package humantrix


import org.springframework.web.multipart.commons.CommonsMultipartFile
import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class AttachmentController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Attachment.list(params), model:[attachmentInstanceCount: Attachment.count()]
    }

    def show(Attachment attachmentInstance) {
        respond attachmentInstance
    }

    def create() {
        respond new Attachment(params)
    }

    @Transactional
    def save() {
        Attachment attachmentInstance=new Attachment()
		def errorflag=false
		def errormsg="文件格式错误！"
		CommonsMultipartFile downloadedfile = request.getFile('name');
		def path=request.getSession().getServletContext().getRealPath("/")
		def img_path=path+"/uploads/"
		def img_dir=new File(img_path)
		if(!img_dir.isDirectory()){
			img_dir.mkdir()
		}
		def filePath=path+"/uploads/i/"
		def dir=new File(filePath)
		if(!dir.isDirectory()){
			dir.mkdir()
		}
		Random rand = new Random()
		def randStr=rand.nextInt(100000).toString()
		long longValue=Long.parseLong(new Date().getTime()+randStr)
		def fileName=Long.toString(longValue, 36)
		def oFileName=downloadedfile.getOriginalFilename()
		
		attachmentInstance.oraName=oFileName
		if(oFileName.lastIndexOf(".")!=-1){
			attachmentInstance.type=oFileName.substring(oFileName.lastIndexOf(".")+1).toLowerCase()
		}else{
			errorflag=true
		}
		if(errorflag){
			flash.message = errormsg
			redirect attachmentInstance
		}else{
		
		def lastfileName=filePath+fileName+"."+attachmentInstance.type
		attachmentInstance.name=fileName+"."+attachmentInstance.type
		
		def fos= new FileOutputStream(new File(lastfileName))
		downloadedfile.getBytes().each{ fos.write(it) }
		
        attachmentInstance.save flush:true
		if (!attachmentInstance.save()) {
			attachmentInstance.errors.each {
				System.out.println( it )
			}
		}
		}
		
        render(view: "show", model: [attachmentInstance: attachmentInstance])
    }

    def edit(Attachment attachmentInstance) {
        respond attachmentInstance
    }

    @Transactional
    def update(Attachment attachmentInstance) {
        if (attachmentInstance == null) {
            notFound()
            return
        }

        if (attachmentInstance.hasErrors()) {
            respond attachmentInstance.errors, view:'edit'
            return
        }

        attachmentInstance.save flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Attachment.label', default: 'Attachment'), attachmentInstance.id])
                redirect attachmentInstance
            }
            '*'{ respond attachmentInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Attachment attachmentInstance) {

        if (attachmentInstance == null) {
            notFound()
            return
        }

        attachmentInstance.delete flush:true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Attachment.label', default: 'Attachment'), attachmentInstance.id])
                redirect action:"index", method:"GET"
            }
            '*'{ render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'attachment.label', default: 'Attachment'), params.id])
                redirect action: "index", method: "GET"
            }
            '*'{ render status: NOT_FOUND }
        }
    }
}
