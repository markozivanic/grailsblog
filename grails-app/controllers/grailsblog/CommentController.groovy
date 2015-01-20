package grailsblog

class CommentController {

  def index() {
    request["comments"]=Comment.list();
  }
  
  def newComment() {
    request["articles"]=Article.list();
    request["users"]=User.list();
  }
  
  def save() {
    def user=User.get(params.userId);
    def article=Article.get(params.articleId);
    def comment=new Comment(user:user,article:article,comment:params.comment);
    if (!comment.save()) {
      redirect(action:"saveFailed");
    } else {
      redirect(action:"index");
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
