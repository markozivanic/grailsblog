package grailsblog

class UserController {

    def scaffold = true;

	def index(){
		request["users"] = User.list();
	}
	def newUser(){
		
	}
	def save(){
		def user=new User(name:params.name, email:params.email,password:params.password);
		user.save();
		if(!user.save()){
			redirect(action:"savefail");
			return;
		}
		redirect(action:"index");
	}
	def savefail(){
		
	}
 
  def login() {
  }
  
  def validate() {
    String username=params.username;
    String password=params.password;
    User user=User.findByName(username);
    if (!user) {
      redirect(action:"loginFailed");
      return;
    }
    if (!user.password.equals(password)) {
      redirect(action:"loginFailed");
      return;
    }
    session.user=user;
    redirect(controller:"article",action:"index");
  }
  
  def loginFailed() {
  }
  
  def logout() {
    session.user=null;
    redirect(controller:"article",action:"index");
  }
}
