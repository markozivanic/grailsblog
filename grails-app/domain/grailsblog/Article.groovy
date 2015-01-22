package grailsblog

class Article {

    String title;
    String content;
    Date creationTime;

    static belongsTo=[user:User];

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
