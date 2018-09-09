import humantrix.Attachment
import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_humantrix_attachment_form_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/attachment/_form.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
expressionOut.print(hasErrors(bean: attachmentInstance, field: 'oraName', 'error'))
printHtmlPart(1)
invokeTag('message','g',7,['code':("attachment.oraName.label"),'default':("Ora Name")],-1)
printHtmlPart(2)
invokeTag('textArea','g',10,['name':("oraName"),'cols':("40"),'rows':("5"),'maxlength':("255"),'required':(""),'value':(attachmentInstance?.oraName)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: attachmentInstance, field: 'name', 'error'))
printHtmlPart(4)
invokeTag('message','g',16,['code':("attachment.name.label"),'default':("Name")],-1)
printHtmlPart(2)
invokeTag('textArea','g',19,['name':("name"),'cols':("40"),'rows':("5"),'maxlength':("255"),'required':(""),'value':(attachmentInstance?.name)],-1)
printHtmlPart(3)
expressionOut.print(hasErrors(bean: attachmentInstance, field: 'type', 'error'))
printHtmlPart(5)
invokeTag('message','g',25,['code':("attachment.type.label"),'default':("Type")],-1)
printHtmlPart(2)
invokeTag('textField','g',28,['name':("type"),'maxlength':("16"),'required':(""),'value':(attachmentInstance?.type)],-1)
printHtmlPart(6)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1536079291000L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
