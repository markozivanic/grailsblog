package grailsblog

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Comment)
class CommentSpec extends Specification {
	Comment comment;
	
    def setup() {
	 comment = new Comment();
    }

    def cleanup() {
    }

    void "test something"() {
		given:
			comment.name = "I love this blog";
		when:
			comment.name = "I access this blog";
		then:
			comment.name.contains  "I see nice topics";
    }
}
