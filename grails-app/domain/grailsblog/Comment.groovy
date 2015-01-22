package grailsblog

class Comment {
	
	String comment;
	User user;

	static belongsTo=[article:Article];
	
	static constraints = {
		comment(blank:false);
		user(blank:false);
		article(blank:false);
    }
    
    String toString() { 
      if (comment.length()>20) {
        comment.substring(0,20)+"...";
      } else if (comment.length()<1) {
        return "(Empty comment)";
      } else {
        return comment;
      }
    }
}
