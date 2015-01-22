<div class="row header">
  <div class="h1 col-md-5">Mega Blog</div>
  <div class="btn btn-default login-info col-md-4">
    <g:if test="${session.user}">
      Logged in as ${session.user}.
      <a href="/grailsblog/user/logout">Log out</a>
    </g:if><g:else>
      <a href="/grailsblog/user/login">Log in</a>
    </g:else>
  </div>
  <div class="btn btn-default col-md-3">
    <a href="/grailsblog/user/newUser">Add new user</a>
  </div>
  <div class="btn btn-default col-md-3">
    <a href="/grailsblog/article">Articles</a>
  </div>
  <form action="/grailsblog/article/search" method="POST" class="search col-md-3">
    <input type="search" name="q" placeholder="Search articles"/>
    <input type="submit" value="Search"/>
  </form>
</div>
