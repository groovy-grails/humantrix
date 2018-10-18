package humantrix

class AController {

    def index() { 
		def type= URLDecoder.decode(params.type, "UTF-8")
		println type
		def documentInstance=Document.findByType(type)
		respond documentInstance
	}
}
