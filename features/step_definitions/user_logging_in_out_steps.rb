Given(/^I am not logged in$/) do
    visit root_path
end

When(/^I visit new_user_session_path$/) do
  visit '/users/sign_in'
end

When(/^I fill in "([^"]*)" with "([^"]*)"$/) do |label, value|
  fill_in label, :with => value
end

When(/^I click the button "([^"]*)"$/) do |name_of_button|
  click_button name_of_button
end

Then(/^I see "([^"]*)" link$/) do |name_of_link|
  visit root_path
  find_link(name_of_link)
end
