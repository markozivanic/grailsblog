require 'page-object'

class ArticleListPage
  include PageObject

  page_url "localhost:8080/grailsblog/"

  link(:firstArticle,:text=>'ATDD Strategies for Enterprise Web Development')

end
