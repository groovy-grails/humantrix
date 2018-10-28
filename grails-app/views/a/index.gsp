<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<title>成都人之初科技有限公司</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="description" content="成都人之初科技有限公司官方网站">
<meta name="keywords" content="人之初，人之初科技，成都人之初科技，成都人之初科技有限公司">
<meta name="author" content="成都人之初科技">
<meta name="robots" content="index,follow">
<meta name="application-name" content="humantrix.com">

<!-- Site CSS -->
<asset:stylesheet src="bootstrap_3.3.7_css_bootstrap.min.css" />
<asset:stylesheet src="font-awesome_4.7.0_css_font-awesome.min.css" />
<asset:stylesheet src="site.min.css" />

<asset:stylesheet src="angular-ui-notification-d587e5c405.min.css" />
<asset:stylesheet src="fangular-ui-switch-fc63192144.min.css" />
<asset:stylesheet src="style-9501811805.min.css" />


<!-- Favicons -->
<link rel="apple-touch-icon-precomposed"
	href="${assetPath(src: 'favicon.ico')}">
<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}"
	type="image/x-icon">

</head>
<body>

	<div class="navbar navbar-inverse navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button class="navbar-toggle collapsed" type="button"
					data-toggle="collapse" data-target=".navbar-collapse">
					<span class="sr-only">Toggle navigation</span> <span
						class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
				<a class="navbar-brand hidden-sm" href="/">首页</a>
			</div>
			<div class="navbar-collapse collapse" role="navigation">
				<ul class="nav navbar-nav">
					<li class="hidden-sm hidden-md"><a  class="doc_link_type" href="#">关于我们</a></li>
					<li><a href="#">产品与服务</a></li>
					<li><a href="#">定制开发</a></li>
					<li><a href="#">服务支持</a></li>
					<li><a  class="doc_link_type" href="#">联系我们</a></li>
				</ul>
			</div>
		</div>
	</div>

	

  <header class="jumbotron subhead">
    <div class="container">
      <h1>${documentInstance?.type}</h1>
      <p class="lead">成都人之初科技有限公司</p>
    </div>
  </header>

  <div class="container">

    <div class="row">
      <div class="col-md-3 ">
        <div id="toc" class="bc-sidebar">

        </div>
      </div>

      <div class="col-md-9">
        <article class="post page">
          <section class="post-content">
            <h2 id="-">${documentInstance?.name}</h2>
			${raw(documentInstance?.content)}
          </section>
        </article>
      </div>
    </div>

  </div>

	

	<footer class="footer ">
		<div class="container">
			<div class="row footer-top">
				<div class="col-md-6 col-lg-6">
					<h4>成都人之初科技有限公司</h4>
					<p>我们一直致力于为广大公司和个人提供最好的产品和最优质的服务！</p>
				</div>
				<div class="col-md-6  col-lg-5 col-lg-offset-1">
					<div class="row about">
						<div class="col-sm-3">
							<h4>关于</h4>
							<ul class="list-unstyled">
								<li><a  class="doc_link_type" href="#">关于我们</a></li>
								<li><a  class="doc_link_type" href="#">友情链接</a></li>
								<li><a class="doc_link_type"  href="#">加入我们</a></li>
							</ul>
						</div>
						<div class="col-sm-3">
							<h4>联系方式</h4>
							<ul class="list-unstyled">
								<li>028-</li>
								<li><a href="#">电子邮件</a></li>
							</ul>
						</div>

						<div class="col-sm-2">
							<h4>资源</h4>
							<ul class="list-unstyled">
								<li><a class="doc_link_type"  href="#">帮助</a></li>
								<li><a  class="doc_link_type" href="#">FAQ</a></li>
							</ul>
						</div>
					</div>

				</div>
			</div>
			<hr>
			<div class="row footer-bottom">
				<ul class="list-inline text-center">
					<li><a href="http://www.miibeian.gov.cn/" target="_blank">蜀ICP备***号</a></li>
				</ul>
			</div>
		</div>
	</footer>

	<!-- Bootstrap core JavaScript
================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
	<asset:javascript src="query_1.12.4_jquery.min.js" />
	<asset:javascript src="bootstrap_3.3.7_js_bootstrap.min.js" />
	<asset:javascript src="application.js"/>

</body>
</html>