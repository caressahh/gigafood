Then(/^show me the page$/) do
  save_and_open_page
end

When(/^I confirm popup$/) do
  page.driver.browser.switch_to.alert.accept
end

Then(/^"([^"]*)" should receive an email$/) do |address|
  #mailbox_for(address).size.should == n.to_i
  expect(mailbox_for(address).size).to eq 1
end


Then /^"([^"]*)" should see "(.*)" in the subject$/ do |address, text|
  open_email(address)
  expect(current_email.subject).to match Regexp.new(text)
  #current_email.subject.should =~ Regexp.new(text)
end

Then /^"([^"]*)" should see "(.*)" in the email$/ do |address, text|
  open_email(address)
  expect(current_email.body).to match Regexp.new(text)
  #current_email.body.should =~ Regexp.new(text)
end
