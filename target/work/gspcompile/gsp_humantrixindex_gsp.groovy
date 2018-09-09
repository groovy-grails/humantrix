import org.codehaus.groovy.grails.plugins.metadata.GrailsPlugin
import org.codehaus.groovy.grails.web.pages.GroovyPage
import org.codehaus.groovy.grails.web.taglib.*
import org.codehaus.groovy.grails.web.taglib.exceptions.GrailsTagException
import org.springframework.web.util.*
import grails.util.GrailsUtil

class gsp_humantrixindex_gsp extends GroovyPage {
public String getGroovyPageFileName() { "/WEB-INF/grails-app/views/index.gsp" }
public Object run() {
Writer out = getOut()
Writer expressionOut = getExpressionOut()
registerSitemeshPreprocessMode()
printHtmlPart(0)
createTagBody(1, {->
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',4,['gsp_sm_xmlClosingForEmptyTag':(""),'http-equiv':("Content-Type"),'content':("text/html; charset=UTF-8")],-1)
printHtmlPart(2)
createTagBody(2, {->
createClosureForHtmlPart(3, 3)
invokeTag('captureTitle','sitemesh',6,[:],3)
})
invokeTag('wrapTitleTag','sitemesh',6,[:],2)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',7,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("viewport"),'content':("width=device-width, initial-scale=1")],-1)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',8,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("description"),'content':("成都上古科技有限公司官方网站")],-1)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',9,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("keywords"),'content':("上古，上古科技，成都上古科技，成都上古科技有限公司")],-1)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',10,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("author"),'content':("成都上古科技")],-1)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',11,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("robots"),'content':("index,follow")],-1)
printHtmlPart(1)
invokeTag('captureMeta','sitemesh',12,['gsp_sm_xmlClosingForEmptyTag':(""),'name':("application-name"),'content':("humantrix.com")],-1)
printHtmlPart(4)
invokeTag('stylesheet','asset',15,['src':("bootstrap_3.3.7_css_bootstrap.min.css")],-1)
printHtmlPart(1)
invokeTag('stylesheet','asset',16,['src':("font-awesome_4.7.0_css_font-awesome.min.css")],-1)
printHtmlPart(1)
invokeTag('stylesheet','asset',17,['src':("site.min.css")],-1)
printHtmlPart(2)
invokeTag('stylesheet','asset',19,['src':("angular-ui-notification-d587e5c405.min.css")],-1)
printHtmlPart(1)
invokeTag('stylesheet','asset',20,['src':("fangular-ui-switch-fc63192144.min.css")],-1)
printHtmlPart(1)
invokeTag('stylesheet','asset',21,['src':("style-9501811805.min.css")],-1)
printHtmlPart(5)
expressionOut.print(assetPath(src: 'favicon.ico'))
printHtmlPart(6)
expressionOut.print(assetPath(src: 'favicon.ico'))
printHtmlPart(7)
})
invokeTag('captureHead','sitemesh',30,[:],1)
printHtmlPart(1)
createTagBody(1, {->
printHtmlPart(8)
invokeTag('javascript','asset',355,['src':("query_1.12.4_jquery.min.js")],-1)
printHtmlPart(9)
invokeTag('javascript','asset',356,['src':("bootstrap_3.3.7_js_bootstrap.min.js")],-1)
printHtmlPart(10)
})
invokeTag('captureBody','sitemesh',364,[:],1)
printHtmlPart(11)
}
public static final Map JSP_TAGS = new HashMap()
protected void init() {
	this.jspTags = JSP_TAGS
}
public static final String CONTENT_TYPE = 'text/html;charset=UTF-8'
public static final long LAST_MODIFIED = 1536048806000L
public static final String EXPRESSION_CODEC = 'html'
public static final String STATIC_CODEC = 'none'
public static final String OUT_CODEC = 'html'
public static final String TAGLIB_CODEC = 'none'
}
