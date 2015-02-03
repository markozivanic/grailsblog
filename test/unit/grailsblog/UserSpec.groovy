package grailsblog

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(User)
class UserSpec extends GroovyTestCase {

    void "test required fields"() {

      assert User.get(1);
    
      User user=new User(name:"FooBar",email:"foobar@example.com",password:"FooBarBaz");
      assert user.save();
    }
}
