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
      stuff column:'stuff', type:'text'
    }
    
    String toString() {
      return title;
    }
}
