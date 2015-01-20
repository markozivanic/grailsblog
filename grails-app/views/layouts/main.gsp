<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<title><g:layoutTitle default="Blog"/></title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<link rel="shortcut icon" href="${assetPath(src: 'favicon.ico')}" type="image/x-icon">
		<link rel="apple-touch-icon" href="${assetPath(src: 'apple-touch-icon.png')}">
		<link rel="apple-touch-icon" sizes="114x114" href="${assetPath(src: 'apple-touch-icon-retina.png')}">
  		<asset:stylesheet src="application.css"/>
		<asset:stylesheet src="apis.min.css"/>
		<g:layoutHead/>
	</head>
	<body class="container">
 
		<div class="row header">
    <div class="title-header">Mega Blog</div>
    <div class="login-info">
      <g:if test="${session.user}">
        Logged in as ${session.user.name}.
        <a href="/grailsblog/user/logout">Log out</a>
      </g:if>
      <g:else>
        <a href="/grailsblog/user/login">Log in</a>
      </g:else>
    </div>
  </div>
  
		<g:layoutBody/>
		<div class="row footer" role="contentinfo">&copy; 2015 M Zivanic and AK Sommerville</div>

  </body>
	<asset:javascript src="application.js"/>
  <asset:javascript src="apis.min.js"/>
</html>
