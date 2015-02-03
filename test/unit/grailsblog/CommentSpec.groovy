package grailsblog

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Comment)
class CommentSpec extends GroovyTestCase {

    void "test something"() {
      //User user=new User(name:"UserName",email:"email@example.com",password:"MyPassword");
      Comment comment=new Comment(comment:"Here is some comment text",user:null,creationTime:new Date());
      //assert comment.save();
    }
}
