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

    String getUrlFileName() {
      return getUrlFileNameFromTitle(title);
    }

    static String getUrlFileNameFromTitle(String title) {
      String name=title.toLowerCase().replaceAll(/[^a-z0-9_]/,'_');
      while (true) {
        int initialLength=name.length();
        if (initialLength<25) break;
        String shorterName=name.replaceAll(/_[^_]*$/,"");
        name=shorterName.replaceAll(/_+$/,"");
        if (initialLength==name.length()) break;
      }
      if (name.length()<5) return title;
      return name;
    }

    static Article lookupAlternateId(String alternateId) {
      String urlFileName=getUrlFileNameFromTitle(alternateId);
      if (urlFileName.length()<1) return null;
      for (Article article:Article.list()) {
        if (urlFileName.equals(article.getUrlFileName())) return article;
      }
      return null;
    }
}
