package humantrix
/**
 * 
 * @author bros
 *4,类别:说明文档,FAQ,帮助，联系我们，关于我们,加入我们
1,名称
2,正文
3,附件
 */
class Document {
	static hasMany = [attachments: Attachment]
	String type
	String name
	String content

    static constraints = {
		name(nullable:false,blank:false,size:0..255,display:true)
		content(nullable:false,blank:false,size:0..8000)
		type(nullable:false,blank:false,inList: ["关于我们", "联系我们", "加入我们", "友情链接","说明文档", "帮助", "FAQ"],display:true)
    }
	public String toString() {
		return name
	}
}
