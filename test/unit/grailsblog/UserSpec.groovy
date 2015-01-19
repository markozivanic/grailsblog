package grailsblog

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(User)
class UserSpec extends Specification {

    User user;

    def setup() {
      user=new User();
    }

    def cleanup() {
    }

    void "test required fields"() {
    }
}
