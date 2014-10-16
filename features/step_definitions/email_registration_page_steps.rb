require_relative '../../features/pages/home_page'
require_relative '../../features/pages/abstract_page'

Given(/^he is in the home page$/) do
  @base_page = AbstractPage.new
  @home_page = @base_page.navigate_to_home_page
end

When(/^he enters email address in email field$/) do
  @home_page.input_user_email 'test@test.test'
end

When(/^clicks on submit email$/) do
  @home_page.click_submit_email_button
end

Then(/^the email is submitted to the app$/) do
  expect(page).to have_content "THANKS! We'll be in touch soon."
end
