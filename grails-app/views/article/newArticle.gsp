<!DOCTYPE html>
<html><head>
  <meta name="layout" content="main.gsp"/>
  <title>New Article</title>
</head><body>
  <g:form action="save">
    <label for="title">Title</label>
    <input type="text" name="title"/>
    <br/>
    <label for="content">Content</label>
    <textarea name="content"></textarea>
    <br/>
    <input type="submit" value="Create"/>
  </g:form>
</body></html>