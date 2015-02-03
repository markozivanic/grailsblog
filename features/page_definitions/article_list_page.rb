require 'page-object'
load 'features/support/site-config.rb'

class ArticleListPage
  include PageObject

  page_url "#{SiteConfig.PREFIX}"

  link(:firstArticle,:text=>'ATDD Strategies for Enterprise Web Development')

end
