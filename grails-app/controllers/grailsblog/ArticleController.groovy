package grailsblog

class ArticleController {
    
    def index() {
      request["articles"]=Article.list();
    }
    
    def newArticle() {
    }
    
    def save() {
      def user=User.get(1);//TODO
      def article=new Article(user:user,title:params.title,content:params.content);
      article.save();
      redirect(action:"index");
    }
}
