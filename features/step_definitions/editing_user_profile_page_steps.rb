Given(/^I am on the user log in page$/) do
	visit user_session_path
end

Given(/^I fill in email with "([^"]*)"$/) do |email|
	@user = User.create(email: email, password: "123456")
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
end

When(/^show me the page$/) do
  # save_and_open_page
end

Then(/^I should see the add gallery page$/) do
  expect(body).to include("New Gallery")
end

Given(/^I am on the create gallery page$/) do
  click_link "Add new gallery"
end

Given(/^I fill in name with "([^"]*)"$/) do |gallery_name|
	fill_in "gallery[name]", with: gallery_name
end

When(/^I fill in name with "([^"]*)" and click on "([^"]*)"$/) do |gallery_name, button|
  fill_in "gallery[name]", with: gallery_name
  click_link button
end

Then(/^I should see the user profile$/) do
	expect(page).to have_current_path(user_path(@user.id))
end

Then(/^I should see the gallery "([^"]*)"$/) do |coffee_cups|
	expect(body).to include(coffee_cups)
end

Given(/^a gallery exists$/) do
	@gallery_name = "New Gallery"
	click_link "Add new gallery"
	fill_in "gallery[name]", with: @gallery_name
  click_button "Create Gallery"
end

When(/^I click on the first link to add new Collection$/) do
	click_link "Add new collection in #{@gallery_name}"
end

Then(/^I should see add collection page$/) do
  expect(page).to have_current_path(new_gallery_collection_path(Gallery.last.id))
end

When(/^I fill in Name with "([^"]*)" and fill in Thumbnail with (\d+) and press "([^"]*)"$/) do |collection_name, thumbnail_int, create_btn|
  fill_in "Name", with: collection_name
  fill_in "Thumbnail", with: thumbnail_int
  click_button create_btn
end

Then(/^I should see the collections show page$/) do
	expect(page).to have_current_path(collection_path(Collection.last.id))
end

Then(/^I should see the name of the collection$/) do
	expect(body).to include(Collection.last.name)
end

When(/^I click the "([^"]*)" link$/) do |back|
  click_link back
end

Then(/^I should see the collection index page$/) do
	expect(page).to have_current_path( gallery_collections_path(Collection.last.gallery_id))
end






