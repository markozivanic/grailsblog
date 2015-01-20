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
		redirect(action:index);
	}
}
