package grailsblog

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Comment)
class CommentSpec extends GroovyTestCase {
	Comment comment;
	Date date = new Date();
	User marko;
	
    void setUp() {
	marko = new User();
	 comment = new Comment(comment:"This is comment", user:marko, creationTime:date);
    }

    void tearDown() {
		comment.delete();
    }

    void testComment() {
		assertEquals("This is comment", comment.comment);
		assertEquals(marko, comment.user);
		assertEquals(date, comment.creationTime);
    }
}
