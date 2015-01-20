package grailsblog

class ArticleController {
  static scope="singleton";
    
    def index() {
      request["articles"]=Article.list();
    }
    
    def newArticle() {
      request["user"]=User.get(1);//TODO
    }
    
    def save() {
      def user=User.get(1);//TODO
      if (null==user) {
        redirect(action:"saveFailed");
        return;
      }
      def article=new Article(user:user,title:params.title,content:params.content,creationTime:new Date());
      if (null==article.save()) {
        redirect(action:"saveFailed");
      } else {
        redirect(action:"index");
      }
    }
    
    def saveFailed() {
    }
    
    def read() {
      request["article"]=Article.get(params.id);
    }
}
