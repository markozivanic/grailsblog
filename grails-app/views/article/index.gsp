<!DOCTYPE html>
<html><head>
  <meta name="layout" content="main.gsp"/>
  <title>Articles</title>
</head>
	<body>
    ${totalCount} articles.<br/>
    
    <form action="/grailsblog/article/newArticle" method="GET">
      <input type="submit" value="New Article"/>
    </form>
    
    <g:each in="${articles}" var="article">
      ${article}<br/>
    </g:each>
	</body>
</html>