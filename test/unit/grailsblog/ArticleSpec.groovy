package grailsblog

import org.junit.Test;

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Article)
class ArticleSpec extends GroovyTestCase {

	Article article;
	Date date = new Date();
    void setUp() {
		article = new Article(title:"Lion king", content:"Watching the lions", creationTime:date);
    }

    def cleanup() {
		article.delete();
    }

	@Test
    void testNewArticle() {
		assertEquals("Lion king", article.title);
		assertEquals("Watching the lions", article.content);
		assertEquals(date, article.creationTime);
    }
}
