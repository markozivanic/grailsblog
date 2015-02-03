require 'page-object'
load 'features/support/site-config.rb'

class NewArticlePage
  include PageObject

  text_field(:title,:name=>'title')
  text_field(:content,:name=>'content')
  button(:submit,:value=>'Create')

end
