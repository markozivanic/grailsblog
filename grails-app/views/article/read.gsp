<!DOCTYPE html>
<html><head>
  <meta name="layout" content="main.gsp"/>
  <title>Articles</title>
</head><body>

  ${article.title}<br/>
  By ${article.user.name}<br/>
  <pre>${article.content}</pre>
  
  <g:if test="${session.user}">
  <!--<form action="/grailsblog/comment/newComment" class="topbutton">-->
  <form action="#" onsubmit="event.preventDefault();submitAjaxComment(event);">
    <input type="hidden" name="articleId" value="${article.id}"/>
    <input type="submit" value="Add a comment"/>
    <textarea id="commentText" name="comment"></textarea>
  </form>
  </g:if>
  
  <span id="commentInsertion"></span>
  
  <g:each in="${comments}" var="comment">
    <div class="panel panel-default comment">
      <div class="panel-heading user">${comment.user}</div>
      <div class="panel-body">
        <div class="content">${comment.comment}</div>
      </div>
    </div>
  </g:each>
  
<script language="JavaScript">

  function installNewComment(comment) {
	  $("#commentText").val("");
	  var commentContainer=$("<div class='panel panel-default comment'>");
	  commentContainer.append("<div class='panel-heading user'>${session.user}</div>");
	  commentContainer.append("<div class='panel-body'><div class='content'>"+comment+"</div></div>");
	  $("#commentInsertion").before(commentContainer)
  }

  function submitAjaxComment(event) {
	  var articleId=event.target.elements.articleId.value;
	  var comment=event.target.elements.comment.value;
	  $.ajax("/grailsblog/comment/save",{
		  data:{articleId:articleId,comment:comment},
	      success:function(response){
		        installNewComment(comment);
		      }
	  });
  }
</script>
  
</body></html>
