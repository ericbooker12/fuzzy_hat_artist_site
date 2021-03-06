When(/^I click on "([^"]*)"$/) do |link_or_button|
  click_link_or_button link_or_button
end

Then(/^I should see the add gallery page$/) do
  expect(body).to include("New Gallery")
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

When(/^I click on the first link to add new Collection$/) do
	visit new_gallery_collection_path(@gallery.id)
end

Then(/^I should see add collection page$/) do
  expect(page).to have_current_path(new_gallery_collection_path(Gallery.last.id))
end

When(/^I fill in Name with "([^"]*)" and press "([^"]*)"$/) do |collection_name, create_btn|
  fill_in "Name", with: collection_name
  click_button create_btn
end

Then(/^I should see the collections show page$/) do
	expect(page).to have_current_path(collection_path(Collection.last.id))
end

Then(/^I should see the name of the collection$/) do
	expect(body).to include(Collection.last.name)
end

Then(/^I should see the collection index page$/) do
	expect(page).to have_current_path( gallery_collections_path(Collection.last.gallery_id))
end

Then(/^I should not be allowed to submit$/) do
	expect(page).to have_content("Name can't be blank")
end
