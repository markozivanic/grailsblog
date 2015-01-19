package grailsblog

class Article {

    User user;
    String title;
    String content;

    static constraints = {
      title()
      user(blank:false)
      content()
    }
    
    static mapping={
      stuff column:'stuff', type:'text'
    }
}
