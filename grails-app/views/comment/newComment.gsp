<!DOCTYPE html>
<html><head>
  <meta name="layout" content="main.gsp"/>
  <title>Add Comment</title>
</head><body>

  <form action="/grailsblog/comment/save" method="POST">
    <label for="user">User</label>
    <select name="userId">
      <g:each in="${users}" var="user">
        <option value="${user.id}">${user}</option>
      </g:each>
    </select>
    <br/>
    <label for="article">Article</label>
    <select name="articleId">
      <g:each in="${articles}" var="article">
        <option value="${article.id}">${article}</option>
      </g:each>
    </select>
    <br/>
    <label for="comment">Comment</label>
    <textarea name="comment"></textarea>
    <br/>
    <input type="submit" value="Add Comment"/>
  </form>
  
</body></html>