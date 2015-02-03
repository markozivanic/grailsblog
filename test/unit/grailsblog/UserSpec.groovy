package grailsblog

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(User)
class UserSpec extends GroovyTestCase {


    User user;

    void setUp() {
      user=new User(name:"Marko", email:"markons91@hotmail.com", password:"password");
    }

    void tearDown() {
		user.delete();
    }

    void testUser() {
		assertEquals("Marko", user.name);
		assertEquals("markons91@hotmail.com", user.email);
		assertEquals("password", user.password);

    }
}
