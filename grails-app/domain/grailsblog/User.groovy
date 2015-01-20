package grailsblog

class User {

    String name;
    String email;
    String password;
    
    static hasMany=[
      articles:Article,
      comments:Comment,
    ];

    static constraints = {
      name(size:1..20,unique:true,blank:false)
      email(email:true,blank:false)
      password(size:6..20,blank:false,password:true)
    }
    
    String toString() { name; }
}
