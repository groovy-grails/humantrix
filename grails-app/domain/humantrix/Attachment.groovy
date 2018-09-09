package humantrix
/**
 * 
 * @author bros
 *1,原始文件名
2,文件名
3,类型：图片，文档，其他
 */
class Attachment {
	String oraName
	String name
	String type

    static constraints = {
		oraName(nullable:false,blank:false,size:0..255,display:true)
		name(nullable:false,blank:false,size:0..255,display:true)
		type(nullable:false,blank:false,size:0..16,display:true)
    }
	public String toString() {
		return oraName
	}
}
