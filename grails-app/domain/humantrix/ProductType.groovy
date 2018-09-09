package humantrix

class ProductType {
	ProductType father
	String name

    static constraints = {
		name(nullable:false,blank:false,size:0..32,display:true)
		father(nullable:true,blank:true,display:true)
    }
	public String toString() {
		return name
	}
}
