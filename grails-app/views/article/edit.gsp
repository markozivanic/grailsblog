<!DOCTYPE html>
<html><head>
  <meta name="layout" content="main.gsp"/>
  <title>New Article</title>
</head>
	<body>
	  <form action="/grailsblog/article/delete" method="POST">
	    <input type="hidden" name="articleId" value="${article.id}"/>
	    <input type="submit" value="DELETE"/>
	  </form>
	  <g:form action="save">
	    <label for="title">Title</label>
	    <input type="text" name="title" value="${article.title}"/>
	    <br/>
	    <label for="content">Content</label>
	    <textarea name="content">${article.content}</textarea>
	    <br/>
	    <input type="submit" value="Create"/>
	  </g:form>
	   <g:each in="${comments}" var="comment">
		    <div class="panel panel-default comment">
		      <div class="panel-heading user">${comment.user}</div>
		      <div class="panel-body">
		        <div class="content">${comment.comment}</div>
		      </div>
		    </div>
		  </g:each>
	</body>
</html>
