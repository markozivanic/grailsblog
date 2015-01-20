<!DOCTYPE html>
<html><head>
  <meta name="layout" content="main.gsp"/>
  <title>Login</title>
</head><body>

  <form action="/grailsblog/user/validate">
    <label for="username">User name</label>
    <input type="text" name="username"/>
    <br/>
    <label for="password">Password</label>
    <input type="password" name="password"/>
    <br/>
    <input type="submit" value="Log In"/>
  </form>

</body></html>