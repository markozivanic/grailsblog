package grailsblog

class ArticleController {
  static scope="singleton";
    
    def index() {
      request["articles"]=Article.list();
    }
    
    def newArticle() {
      if (!session.user) {
        session.redirectController="article";
        session.redirectAction="newArticle";
        session.redirectParams=[];
        redirect(controller:"user",action:"login");
        return;
      }
    }
    
    def save() {
      if (!session.user) {
        redirect(action:"saveFailed");
        return;
      }
      def article=new Article(
        user:session.user,title:params.title,content:params.content,creationTime:new Date()
      );
      if (null==article.save()) {
        redirect(action:"saveFailed");
      } else {
        redirect(action:"index");
      }
    }
    
    def saveFailed() {
    }
    
    def read() {
      Article article=Article.get(params.id);
      request.article=article;
      if (session.user&&(session.user.id==article.user.id)) {
        flash.article=article;
        redirect(action:"edit");
      } else {
        request.comments=Comment.findAllByArticle(article);
      }
    }
    
    def edit() {
      if (!flash.article) {
        redirect(action:"index");
        return;
      }
      request.article=flash.article;
    }
}
