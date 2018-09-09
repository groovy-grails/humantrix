import humantrix.CustomDevelop
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_humantrix_customDevelop_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/customDevelop/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: customDevelopInstance, field: 'type', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("customDevelop.type.label"),'default':("Type")],-1)
printHtmlPart(2)
invokeTag('select','g',10,['id':("type"),'name':("type.id"),'from':(humantrix.ProductType.list()),'optionKey':("id"),'required':(""),'value':(customDevelopInstance?.type?.id),'class':("many-to-one")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: customDevelopInstance, field: 'clentType', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("customDevelop.clentType.label"),'default':("Clent Type")],-1)
printHtmlPart(2)
invokeTag('textField','g',19,['name':("clentType"),'maxlength':("16"),'required':(""),'value':(customDevelopInstance?.clentType)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: customDevelopInstance, field: 'totalPages', 'error'))
printHtmlPart(5)
invokeTag('message','g',25,['code':("customDevelop.totalPages.label"),'default':("Total Pages")],-1)
printHtmlPart(2)
invokeTag('field','g',28,['name':("totalPages"),'value':(fieldValue(bean: customDevelopInstance, field: 'totalPages')),'required':("")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: customDevelopInstance, field: 'subjectTime', 'error'))
printHtmlPart(6)
invokeTag('message','g',34,['code':("customDevelop.subjectTime.label"),'default':("Subject Time")],-1)
printHtmlPart(2)
invokeTag('field','g',37,['name':("subjectTime"),'value':(fieldValue(bean: customDevelopInstance, field: 'subjectTime')),'required':("")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: customDevelopInstance, field: 'others', 'error'))
printHtmlPart(7)
invokeTag('message','g',43,['code':("customDevelop.others.label"),'default':("Others")],-1)
printHtmlPart(2)
invokeTag('textArea','g',46,['name':("others"),'cols':("40"),'rows':("5"),'maxlength':("255"),'required':(""),'value':(customDevelopInstance?.others)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: customDevelopInstance, field: 'usePeople', 'error'))
printHtmlPart(8)
invokeTag('message','g',52,['code':("customDevelop.usePeople.label"),'default':("Use People")],-1)
printHtmlPart(2)
invokeTag('field','g',55,['name':("usePeople"),'value':(fieldValue(bean: customDevelopInstance, field: 'usePeople')),'required':("")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: customDevelopInstance, field: 'email', 'error'))
printHtmlPart(9)
invokeTag('message','g',61,['code':("customDevelop.email.label"),'default':("Email")],-1)
printHtmlPart(2)
invokeTag('textArea','g',64,['name':("email"),'cols':("40"),'rows':("5"),'maxlength':("255"),'required':(""),'value':(customDevelopInstance?.email)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: customDevelopInstance, field: 'interfaces', 'error'))
printHtmlPart(10)
invokeTag('message','g',70,['code':("customDevelop.interfaces.label"),'default':("Interfaces")],-1)
printHtmlPart(11)
invokeTag('select','g',73,['name':("interfaces"),'from':(humantrix.ProductInterface.list()),'multiple':("multiple"),'optionKey':("id"),'size':("5"),'value':(customDevelopInstance?.interfaces*.id),'class':("many-to-many")],-1)
printHtmlPart(12)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1536160207000L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
