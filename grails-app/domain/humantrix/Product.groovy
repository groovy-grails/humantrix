package humantrix
/**
 * 
 * @author bros
 *1,类别(树形结构)，class ProductType
5,截图
4,描述
3,适用于:（公司，组织，机构，个人），人数限制。。。
6,价格类别（包月/包年）
2,价格
7,是否在首页展示
 */
class Product {
	static hasMany = [attachments: Attachment]
	ProductType type
	String name
	String detail
	String useIn
	String priceType
	float price
	Boolean ifShow

    static constraints = {
		name(nullable:false,blank:false,size:0..64,display:true)
		detail(nullable:false,blank:false,size:0..8000)
		type(nullable:false,blank:false,display:true)
		useIn(nullable:false,blank:false,size:0..64,display:true)
		priceType(nullable:false,blank:false,size:0..16,display:true)
		price(nullable:false,blank:false,scale:2,display:true)
		ifShow(nullable:false,blank:false,display:true)
    }
	/*static mapping = {
		price sqlType: "DECIMAL(18, 2)"
	}*/
	
	public String toString() {
		return name
	}
	
}
