import humantrix.Document
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_humantrix_document_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/document/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: documentInstance, field: 'name', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("document.name.label"),'default':("Name")],-1)
printHtmlPart(2)
invokeTag('textArea','g',10,['name':("name"),'cols':("40"),'rows':("5"),'maxlength':("255"),'required':(""),'value':(documentInstance?.name)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: documentInstance, field: 'type', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("document.type.label"),'default':("Type")],-1)
printHtmlPart(2)
invokeTag('select','g',19,['name':("type"),'from':(documentInstance.constraints.type.inList),'required':(""),'value':(documentInstance?.type),'valueMessagePrefix':("document.type")],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: documentInstance, field: 'attachments', 'error'))
printHtmlPart(5)
invokeTag('message','g',25,['code':("document.attachments.label"),'default':("Attachments")],-1)
printHtmlPart(6)
invokeTag('select','g',28,['name':("attachments"),'from':(humantrix.Attachment.list()),'multiple':("multiple"),'optionKey':("id"),'size':("5"),'value':(documentInstance?.attachments*.id),'class':("many-to-many")],-1)
printHtmlPart(7)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1536079343000L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
