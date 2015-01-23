<div class="row headerbar">

  <div class="col-md-3 title">
    Blog
  </div>

  <div class="col-md-3 login">
    <g:if test="${session.user}">
      Logged in as ${session.user}.
      <a href="/grailsblog/user/logout">Log out</a>
    </g:if>
    <g:else>
      <a href="/grailsblog/user/login">Log in</a>
      or
      <a href="/grailsblog/user/newUser">Create account</a>
    </g:else>
  </div>

  <div class="col-md-3 articles">
    <a href="/grailsblog/article">Articles</a>
  </div>

  <form class="col-md-3 search" action="/grailsblog/article/search" method="POST">
    <input type="search" name="q" placeholder="Search articles"/>
    <input type="submit" value="Go" width="50"/>
  </form>

</div>
