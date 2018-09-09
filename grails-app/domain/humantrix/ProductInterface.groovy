package humantrix
/**
 * 
 * @author bros
 *接口:ProductInterface
1,类别：金融，通信，功能
2,名称：银行/微信/支付宝，银联/VISA/MasterCard,paypal,短信，访问数据统计...，其他：公司-运营商业务对接，公司-公司业务对接，公司-政府业务对接，跨国公司-公司/政府/组织业务对接
4,价格
 */
class ProductInterface {
	String type
	String name
	float price

    static constraints = {
		type(nullable:false,blank:false,size:0..16,inList: ["通用", "定制"],display:true)
		name(nullable:false,blank:false,size:0..255,display:true)
		price(nullable:false,blank:false,scale:2,display:true)
    }
	/*static mapping = {
		price sqlType: "DECIMAL(18, 2)"
	}*/
	public String toString() {
		return name
	}
}
