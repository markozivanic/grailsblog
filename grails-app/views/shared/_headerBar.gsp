<div class="row navbar navbar-default">
<div class="container-fluid">

  <div class="navbar-header">Mega Blog</div>

  <ul class="nav navbar-nav">
  <div class="collapse navbar-collapse">

  <li>
    <g:if test="${session.user}">
      Logged in as ${session.user}.
      <a href="/grailsblog/user/logout">Log out</a>
    </g:if><g:else>
      <a href="/grailsblog/user/login">Log in</a>
      or
      <a href="/grailsblog/user/newUser">Create account</a>
    </g:else>
  </li>

  <li>
    <a href="/grailsblog/article">Articles</a>
  </li>

  <li action="/grailsblog/article/search" method="POST">
    <input type="search" name="q" placeholder="Search articles" class="form-control" />
    <span class="input-group-addon"><i class="fa fa-search"></i></span>
  </li>

  </div>
  </ul>

</div>
</div>
