<!DOCTYPE html>
<html><head>
  <meta name="layout" content="main.gsp"/>
  <title>Login</title>
</head>
	<body>
	<div class="row">
	  <form action="/grailsblog/user/validate">
	  <div class="col-sm-5">
	    <label for="username">User name:</label>
	    <input  class="form-control input-sm" placeholder="User name..." type="text" name="username"/>
	    <br/>
	    <label for="password">Password:</label>
	    <input class="form-control" placeholder="Password..." type="password" name="password"/>
	    </div>
	    <br/>
	    <input class="btn btn-primary col-md-3" type="submit" value="Log In"/>
	  </form>
	  </div>
	</body>
</html>