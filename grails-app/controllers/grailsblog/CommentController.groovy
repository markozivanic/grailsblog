package grailsblog

class CommentController {

  def index() {
    request["comments"]=Comment.list();
  }
  
  def newComment() {
    if (!session.user) {
      session.redirectController="comment";
      session.redirectAction="newComment";
      session.redirectParams=["articleId":params.articleId];
      redirect(controller:"user",action:"login");
      return;
    }
    Article article=Article.get(params.articleId);
    if (!article) {
      redirect(controller:"article",action:"index");
      return;
    }
    request.article=article;
    request.user=session.user;
  }
  
  def save() {
    if (!session.user) {
      redirect(action:"saveFailed");
      return;
    }
    def article=Article.get(params.articleId);
    def comment=new Comment(user:session.user,article:article,comment:params.comment);
    if (!comment.save()) {
      redirect(action:"saveFailed");
    } else {
      redirect(controller:"article",action:"read",params:[id:params.articleId]);
    }
  }
  
  def saveFailed() {
  }
  
  def edit() {
  }
  
  def read() {
    request["comment"]=Comment.get(params.id);
  }
}
