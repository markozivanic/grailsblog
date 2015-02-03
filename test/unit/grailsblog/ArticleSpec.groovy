package grailsblog

import grails.test.mixin.TestFor
import spock.lang.Specification

/**
 * See the API for {@link grails.test.mixin.domain.DomainClassUnitTestMixin} for usage instructions
 */
@TestFor(Article)
class ArticleSpec extends GroovyTestCase {

    void "test something"() {
      //User user=new User(name:"FooBar",email:"foobar@example.com",password:"FooBarBaz");
      Article article=new Article(title:"Title of Article",content:"Content of Article",creationTime:new Date(),user:null);
      //assert article.save();
    }
}
