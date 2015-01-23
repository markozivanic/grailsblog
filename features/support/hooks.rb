require 'watir-webdriver'

Before do
  begin
    @browser=Watir::Browser.new :firefox
  rescue
    puts "!!! Failed to instantiate web browser !!!"
  end
end

After do
  @browser.close
end
