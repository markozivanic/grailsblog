<!DOCTYPE html>
<html><head>
  <meta name="layout" content="main.gsp"/>
  <title>Articles</title>
</head><body>
  READ ARTICLE #${article.id}<br/>
  ${article.title}<br/>
  By ${article.user.name}<br/>
  <pre>${article.content}</pre>
</body></html>