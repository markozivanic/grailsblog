package grailsblog

class ArticleController {
  static scope="singleton";
    
    def index() {
      request["articles"]=Article.list(max:10,sort:"creationTime",order:"desc");
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
	  request.comments=Comment.findAllByArticle(flash.article);
      request.article=flash.article;
    }

    def delete() {
      Article article=Article.get(params.articleId);
      if (!article||!session.user) {
        redirect(action:"deleteFailed");
        return;
      }

      def comments=Comment.findAllByArticle(article);
      comments.each { comment ->
        comment.delete();
      }
      
      article.delete(flush:true);
      redirect(action:"index");
    }
}
