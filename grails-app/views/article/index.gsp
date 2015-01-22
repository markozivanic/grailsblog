<!DOCTYPE html>
<html><head>
  <meta name="layout" content="main.gsp"/>
  <title>Articles</title>
</head>
	<body>
    
    <form action="/grailsblog/article/newArticle" method="GET">
      <input type="submit" value="New Article"/>
    </form>
    
    <ul>
      <g:each in="${articles}" var="article">
        <li><div class="article panel panel-default">
          <div class="panel-heading">
            <a href="/grailsblog/article/read/${article.id}">${article}</a>
          </div>
          <div class="panel-body">
            ${article.creationTime} by ${article.user}
          </div>
        </div></li>
      </g:each>
    </ul>
    
	</body>
</html>
