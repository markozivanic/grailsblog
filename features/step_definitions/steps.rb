require 'cucumber'
require 'page-object'

include PageObject::PageFactory

Given(/^I visit the blog for my favorite blogger$/) do
  visit_page ArticleListPage
end

When(/^I choose a blog post$/) do
  on_page ArticleListPage do |page|
    page.firstArticle
  end
end

Then(/^I should see comments left by other readers$/) do
  on_page ArticlePage do |page|
    page.commentText.should be "I'm not sure I understand this."
  end
end

Given(/^I am reading a blog post from my favorite blogger$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I add my genius comment to the blog post$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^my genius comment is at the top of the blog post comments$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^I am logged in as a blogger$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I publish a new blog post$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I am notified that the blog post was successfully added$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^the newly added blog post is at the top of the recent posts list$/) do
  pending # express the regexp above with the code you wish you had
end

Given(/^my favorite blogger has been very active$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^then I should see a summary of my favorite blogger's (\d+) most recent posts in reverse order$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see the blog post$/) do
  pending # express the regexp above with the code you wish you had
end

When(/^I search for a blog post$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see posts with that value in the title$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^the url should contain information about the post$/) do
  pending # express the regexp above with the code you wish you had
end

