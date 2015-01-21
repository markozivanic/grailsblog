package grailsblog

class CommentController {

  def index() {
    request["comments"]=Comment.list();
  }
  
  def newComment() {
    if (!session.user) {
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
    def user=User.get(params.userId);
    def article=Article.get(params.articleId);
    def comment=new Comment(user:user,article:article,comment:params.comment);
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
