require 'page-object'
load 'features/support/site-config.rb'

class LoginPage
  include PageObject

  page_url "#{SiteConfig.PREFIX}/user/login"

  text_field(:username,:name=>"username")
  text_field(:password,:name=>"password")
  button(:submit,:value=>"Log In")
  
end
