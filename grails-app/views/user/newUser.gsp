<!DOCTYPE html>
<html><head>
  <meta name="layout" content="main.gsp"/>
  <title>Users</title>
</head>
	<body>
  			<g:form action="save" >
    			<label for="name">Name</label>
    			<g:textField name="name" value=""/>
    		<br/>
    			<label for="email">Email</label>
    			<g:textField name="email" value=""/>
    		<br/>
    			<label for="password">Password:</label>
    			<g:textField name="password" value=""/>
    		<br/>
    			<g:submitButton name="create" value="Save" />
			</g:form>
	</body>
</html>