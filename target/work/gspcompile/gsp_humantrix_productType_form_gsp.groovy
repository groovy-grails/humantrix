import humantrix.ProductType
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_humantrix_productType_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/productType/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: productTypeInstance, field: 'name', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("productType.name.label"),'default':("Name")],-1)
printHtmlPart(2)
invokeTag('textField','g',10,['name':("name"),'maxlength':("32"),'required':(""),'value':(productTypeInstance?.name)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: productTypeInstance, field: 'father', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("productType.father.label"),'default':("Father")],-1)
printHtmlPart(5)
invokeTag('select','g',19,['id':("father"),'name':("father.id"),'from':(humantrix.ProductType.list()),'optionKey':("id"),'value':(productTypeInstance?.father?.id),'class':("many-to-one"),'noSelection':(['null': ''])],-1)
printHtmlPart(6)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1536079412000L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
