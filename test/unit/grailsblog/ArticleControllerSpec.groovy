package grailsblog

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.web.ControllerUnitTestMixin} for usage instructions
 */
@TestFor(ArticleController)
class ArticleControllerSpec extends GroovyTestCase {
	User user
	ArticleController ac
	
	void setUp(){
		user new User(name:"Marko", email:"markons91@hotmail.com", password:"password");
		user.save();
		
		ac = new ArticleController();
	}
	void tearDown(){
		user.delete();
	}

    void testIndex() {
    }
}
