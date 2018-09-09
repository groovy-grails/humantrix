import humantrix.ProductSupport
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_humantrix_productSupport_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/productSupport/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: productSupportInstance, field: 'name', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("productSupport.name.label"),'default':("Name")],-1)
printHtmlPart(2)
invokeTag('textField','g',10,['name':("name"),'maxlength':("64"),'required':(""),'value':(productSupportInstance?.name)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: productSupportInstance, field: 'address', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("productSupport.address.label"),'default':("Address")],-1)
printHtmlPart(2)
invokeTag('textArea','g',19,['name':("address"),'cols':("40"),'rows':("5"),'maxlength':("255"),'required':(""),'value':(productSupportInstance?.address)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: productSupportInstance, field: 'username', 'error'))
printHtmlPart(5)
invokeTag('message','g',25,['code':("productSupport.username.label"),'default':("Username")],-1)
printHtmlPart(2)
invokeTag('textField','g',28,['name':("username"),'maxlength':("32"),'required':(""),'value':(productSupportInstance?.username)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: productSupportInstance, field: 'password', 'error'))
printHtmlPart(6)
invokeTag('message','g',34,['code':("productSupport.password.label"),'default':("Password")],-1)
printHtmlPart(2)
invokeTag('textField','g',37,['name':("password"),'maxlength':("32"),'required':(""),'value':(productSupportInstance?.password)],-1)
printHtmlPart(7)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1536079400000L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
