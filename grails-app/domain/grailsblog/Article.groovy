package grailsblog

class Article {

    User user;
    String title;
    String content;
    Date creationTime;

    static constraints = {
      title()
      user(blank:false)
      content()
    }
    
    static mapping={
      content column:'content', type:'text'
    }
    
    String toString() {
      return title;
    }
}
