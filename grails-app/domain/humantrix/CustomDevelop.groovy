package humantrix
/**
 * 
 * @author bros
 *定制开发：CustomDevelop
1,类别(树形结构)，class ProductType
2,客户端类型：PC,平板,手机
3,页面数(BS)/面板数(CS)
4,接口：class ProductInterface
6,工期要求:迭代次数，每次迭代时间，总时间。。。单位:天
7,其他要求：性能要求，数据库组件，加密算法，权限控制，高可用性,需要源码，需要全套文档。。。
5,使用人数
8,邮箱地址
 */
class CustomDevelop {
	static hasMany = [interfaces: ProductInterface]
	ProductType type
	String clentType
	float totalPages
	float subjectTime
	String others
	float usePeople
	String email
	

    static constraints = {
		type(nullable:false,blank:false,display:true)
		clentType(nullable:false,blank:false,size:0..16,display:true)
		totalPages(nullable:false,blank:false,scale:2,display:true)
		subjectTime(nullable:false,blank:false,scale:2,display:true)
		others(nullable:false,blank:false,size:0..255,display:true)
		usePeople(nullable:false,blank:false,scale:2,display:true)
		email(nullable:false,blank:false,size:0..255,email: true,display:true)
    }
	/*static mapping = {
		totalPages sqlType: "DECIMAL(18, 2)"
		subjectTime sqlType: "DECIMAL(18, 2)"
		usePeople sqlType: "DECIMAL(18, 2)"
	}*/
	public String toString() {
		return type+"-"+clentType+"("+totalPages+" pages/panels)"
	}
}
