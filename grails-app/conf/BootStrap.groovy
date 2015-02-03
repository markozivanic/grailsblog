import grailsblog.User;
import grailsblog.Article;
import grailsblog.Comment;

class BootStrap {

    static final String LOREM_IPSUM="Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum";

    def init = { servletContext ->
    
      User andy=new User(name:"Andy",email:"andy@example.com",password:"password").save();
      User marko=new User(name:"Marko",email:"marko@example.com",password:"password").save();
      User linus=new User(name:"Linus",email:"linus@example.com",password:"password").save();
      User lucy=new User(name:"Lucy",email:"lucy@example.com",password:"password").save();
      
      Article barticle=new Article(user:andy,creationTime:new Date(),
        title:"List of things that start with B",
        content:"1. Banana\n2. Butter\n3. Balloon"
      ).save();
      
      Article farticle=new Article(user:andy,creationTime:new Date(),
        title:"List of things that don't start with B",
        content:"1. Apple\n2. Crocodile\n3. Dallas"
      ).save();
      
      Article marticle=new Article(user:marko,creationTime:new Date(),
        title:"ATDD Strategies for Enterprise Web Development",
        content:LOREM_IPSUM
      ).save();
      
      new Comment(user:marko,article:barticle,comment:"B is a useful letter.",creationTime:new Date()).save();
      new Comment(user:linus,article:barticle,comment:"I still prefer L.",creationTime:new Date()).save();
      new Comment(user:andy,article:marticle,comment:"I'm not sure I understand this.",creationTime:new Date()).save();
      
    }
    def destroy = {
    }
}
