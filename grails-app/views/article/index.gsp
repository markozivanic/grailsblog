<!DOCTYPE html>
<html><head>
  <meta name="layout" content="main.gsp"/>
  <title>Articles</title>
</head>
	<body>
    ${articles.size} articles.<br/>
    
    <form action="/grailsblog/article/newArticle" method="GET">
      <input type="submit" value="New Article"/>
    </form>
    
    <ul>
      <g:each in="${articles}" var="article">
        <li>
          <a href="/grailsblog/article/read/${article.id}">${article}</a>
        </li>
      </g:each>
    </ul>
    
	</body>
</html>