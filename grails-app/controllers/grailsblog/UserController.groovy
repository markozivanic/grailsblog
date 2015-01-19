package grailsblog

class UserController {

    def scaffold = true;

	def index(){
		User user = new User();
		[ user:user ]
	}
	def save(){
	}
}
