<!DOCTYPE html>
<html><head>
  <meta name="layout" content="main.gsp"/>
  <title>New Article</title>
</head>
	<body>
	  <g:form action="save">
	    <label for="title">Title</label>
	    <input class="title-entry" type="text" name="title"/>
	    <br/>
	    <textarea name="content"></textarea>
	    <br/>
	    <input type="submit" value="Create"/>
	  </g:form>
	</body>
</html>
