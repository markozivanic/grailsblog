<!DOCTYPE html>
<html><head>
  <meta name="layout" content="main.gsp"/>
  <title>Comments</title>
</head><body>
 
    <form action="/grailsblog/comment/newComment" method="GET">
      <input type="submit" value="New Comment"/>
    </form>
    
    <p>${comments.size} comments</p>
  		
    <ul>
      <g:each in="${comments}" var="comment">
        <li>
          <a href="/grailsblog/comment/read/${comment.id}">${comment}</a> ;
          ${comment.user} ;
          ${comment.article}
        </li>
      </g:each>
    </ul>
    
</body></html>