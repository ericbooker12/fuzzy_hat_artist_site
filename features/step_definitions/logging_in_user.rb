Given(/^I already have an account$/) do
  @user = User.create(email: "jim@bo.com", password: "password")
end

Given(/^I am not logged in$/) do
  # visit('/users/sign_out')
  # click_link "Log out"
    visit root_path

end

When(/^I visit new_user_session_path$/) do
  visit '/users/sign_in'
end

When(/^fill_in Email, with: "([^"]*)"$/) do |email|
  fill_in 'Email', :with => email
end

When(/^fill_in Password, with: "([^"]*)"$/) do |password|
  fill_in 'Password', :with => password
end

When(/^click_button "([^"]*)"$/) do |name_of_button|
  click_button name_of_button
  # save_and_open_page
end

Then(/^I see "([^"]*)" link$/) do |name_of_link|
  visit root_path
  find_link(name_of_link)
  # expect(body).to include "Signed in successfully"
end
