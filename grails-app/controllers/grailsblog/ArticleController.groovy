package grailsblog

class ArticleController {
    
    def index() {
      request["message"]=Article.get(1);
    }
}
