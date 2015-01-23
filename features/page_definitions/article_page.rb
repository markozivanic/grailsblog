require 'page-object'

class ArticlePage
  include PageObject

  page_url ""

  element(:commentText,:text=>"I'm not sure I understand this.")
  
end
