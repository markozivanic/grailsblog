<!DOCTYPE html>
<html><head>
  <meta name="layout" content="main.gsp"/>
  <title>Users</title>
</head>
	<body>
	${users.size} users.<br/>
	
	<form action="newUser" method="GET">
		<input type="SUBMIT" value="New User"/>
	</form>
	<g:each in="${users }" var="user">
		${user }<br/>
		</g:each>
	</body>
</html>