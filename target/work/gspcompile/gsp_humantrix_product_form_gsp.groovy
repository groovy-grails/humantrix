import humantrix.Product
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_humantrix_product_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/product/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: productInstance, field: 'name', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("product.name.label"),'default':("Name")],-1)
printHtmlPart(2)
invokeTag('textField','g',10,['name':("name"),'maxlength':("64"),'required':(""),'value':(productInstance?.name)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: productInstance, field: 'type', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("product.type.label"),'default':("Type")],-1)
printHtmlPart(2)
invokeTag('select','g',19,['id':("type"),'name':("type.id"),'from':(humantrix.ProductType.list()),'optionKey':("id"),'required':(""),'value':(productInstance?.type?.id),'class':("many-to-one")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: productInstance, field: 'useIn', 'error'))
printHtmlPart(5)
invokeTag('message','g',25,['code':("product.useIn.label"),'default':("Use In")],-1)
printHtmlPart(2)
invokeTag('textField','g',28,['name':("useIn"),'maxlength':("64"),'required':(""),'value':(productInstance?.useIn)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: productInstance, field: 'priceType', 'error'))
printHtmlPart(6)
invokeTag('message','g',34,['code':("product.priceType.label"),'default':("Price Type")],-1)
printHtmlPart(2)
invokeTag('textField','g',37,['name':("priceType"),'maxlength':("16"),'required':(""),'value':(productInstance?.priceType)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: productInstance, field: 'price', 'error'))
printHtmlPart(7)
invokeTag('message','g',43,['code':("product.price.label"),'default':("Price")],-1)
printHtmlPart(2)
invokeTag('field','g',46,['name':("price"),'value':(fieldValue(bean: productInstance, field: 'price')),'required':("")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: productInstance, field: 'attachments', 'error'))
printHtmlPart(8)
invokeTag('message','g',52,['code':("product.attachments.label"),'default':("Attachments")],-1)
printHtmlPart(9)
invokeTag('select','g',55,['name':("attachments"),'from':(humantrix.Attachment.list()),'multiple':("multiple"),'optionKey':("id"),'size':("5"),'value':(productInstance?.attachments*.id),'class':("many-to-many")],-1)
printHtmlPart(10)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1536160199000L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
