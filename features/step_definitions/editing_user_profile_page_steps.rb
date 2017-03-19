Given(/^I am on the user log in page$/) do
	visit user_session_path
end

Given(/^I fill in email with "([^"]*)"$/) do |email|
	@user = User.create(email: email, password: "123456")
	# p @user.id
	@email = email
  fill_in "Email", with: email
end

Given(/^I fill in Password with "([^"]*)"$/) do |password|
  fill_in "Password", with: password
end

When(/^I click on "([^"]*)"$/) do |button|
  click_button button
end

Then(/^I am on the user profile page$/) do
	expect(body).to include("User Profile - Bingo")
end

Given(/^"([^"]*)" Button exists$/) do |add_gallery|

end

When(/^I press "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^show me the page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see the edit gallery page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end