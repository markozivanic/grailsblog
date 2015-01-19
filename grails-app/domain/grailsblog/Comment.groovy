package grailsblog

class Comment {
	
	String comment;
	User user;
	Article article;
	
	static constraints = {
		comment(blank:false);
		user(blank:false);
		article(blank:false);
    }
}
