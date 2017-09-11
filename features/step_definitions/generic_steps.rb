Then(/^show me the page$/) do
  save_and_open_page
end

When(/^I confirm popup$/) do
  page.driver.browser.switch_to.alert.accept
end

Given(/^an user exists with email "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^"([^"]*)" should receive an email$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end
