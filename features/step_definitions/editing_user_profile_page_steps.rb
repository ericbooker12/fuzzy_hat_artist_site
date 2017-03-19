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

When(/^I click on "([^"]*)" button$/) do |button|
  click_button button
end

Then(/^I am on the user profile page$/) do
	expect(body).to include("User Profile - Bingo")
end

When(/^I click on "([^"]*)"$/) do |add_new_gallery|
  click_link add_new_gallery
  # save_and_open_page
end

When(/^show me the page$/) do
  # save_and_open_page
end

Then(/^I should see the add gallery page$/) do
  expect(body).to include("New Gallery")
end

Given(/^I am on the create gallery page$/) do
  # expect(body).to include("User Profile - Bingo")
  click_link "Add new gallery"
  # save_and_open_page
end

# Given(/^I fill in name with "([^"]*)"$/) do |gallery_name|
# 	fill_in "gallery[name]", with: gallery_name

# 	save_and_open_page

# end

When(/^I fill in name with "([^"]*)" and click on "([^"]*)"$/) do |gallery_name, button|
  fill_in "gallery[name]", with: gallery_name
  click_link button
end

Then(/^I should see the user profile$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Given(/^a gallery exists$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I click on the first link to add new Collection$/) do
	# all('a')[0].click
	# page.find(:css, '.add_new_collection')[0]
	save_and_open_page
end

Then(/^I should see add collection page$/) do
  # expect(body).to include ("<h1>New Collection</h1>")
end