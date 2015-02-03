require 'page-object'
load 'features/support/site-config.rb'

class ArticlePage
  include PageObject

  page_url "#{SiteConfig.PREFIX}article/read/3"

  link(:loginLink,:text=>'Log in')
  text_field(:commentEntry,:id=>'commentText')
  button(:submitComment,:value=>'Add a comment')
  div(:topmostComment,:xpath=>"(//div[contains(@class,'comment')]//div[contains(@class,'content')])[1]")

  def login
    loginLink
  end
  
end
