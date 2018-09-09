package humantrix
/**
 * 
 * @author bros
 *产品试用:ProductSupport  把地址，帐号发到试用者邮箱
1,名称
2,地址
3,用户名
4,密码
 */
class ProductSupport {
	String name
	String address
	String username
	String password

    static constraints = {
		name(nullable:false,blank:false,size:0..64,display:true)
		address(nullable:false,blank:false,size:0..255,display:true)
		username(nullable:false,blank:false,size:0..32,display:true)
		password(nullable:false,blank:false,size:0..32,display:true)
    }
	public String toString() {
		return name
	}
}
