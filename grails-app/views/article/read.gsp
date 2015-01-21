<!DOCTYPE html>
<html><head>
  <meta name="layout" content="main.gsp"/>
  <title>Articles</title>
</head><body>

  ${article.title}<br/>
  By ${article.user.name}<br/>
  <pre>${article.content}</pre>
  
  <form action="/grailsblog/comment/newComment">
    <input type="hidden" name="articleId" value="${article.id}"/>
    <input type="submit" value="Add a comment"/>
  </form>
  
  <g:each in="${comments}" var="comment">
    <div class="panel panel-default comment">
      <div class="panel-heading user">${comment.user}</div>
      <div class="panel-body">
        <div class="content">${comment.comment}</div>
      </div>
    </div>
  </g:each>
  
</body></html>