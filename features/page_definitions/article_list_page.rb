require 'page-object'
load 'features/support/site-config.rb'

class ArticleListPage
  include PageObject

  page_url "#{SiteConfig.PREFIX}"

  link(:firstArticle,:text=>'ATDD Strategies for Enterprise Web Development')
  button(:newArticle,:value=>'New Article')
  div(:topArticleTitle,:xpath=>"(//div[contains(@class,'article')]//div[contains(@class,'panel-heading')])[1]")
  div(:topArticleDateAndAuthor,:xpath=>"(//div[contains(@class,'article')]//div[contains(@class,'panel-body')])[1]")

end
