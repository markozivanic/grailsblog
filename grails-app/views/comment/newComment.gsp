<!DOCTYPE html>
<html><head>
  <meta name="layout" content="main.gsp"/>
  <title>Add Comment</title>
</head><body>

  <div class="comment-description">
    Commenting on article '${article}'.
  </div>

  <form action="/grailsblog/comment/save" method="POST">
    <input type="hidden" name="userId" value="${user.id}"/>
    <input type="hidden" name="articleId" value="${article.id}"/>
    <textarea name="comment"></textarea>
    <br/>
    <input type="submit" value="Add Comment"/>
  </form>
  
</body></html>
