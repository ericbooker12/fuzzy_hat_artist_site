Given(/^I am on the home page$/) do
	visit root_path
	# save_and_open_page
end

Given(/^I am on the collection index page$/) do
  visit gallery_collections_path(@gallery)
end

Given(/^I am on the collections page$/) do
 visit collection_path(@collection.id)
end

Given(/^I am on the item index page$/) do
  visit collection_items_path(@collection)
end

Given(/^I am on the create gallery page$/) do
  visit new_gallery_path
end

Given(/^I am on the user log in page$/) do
	visit user_session_path
end

Given(/^I am on the user profile page$/) do
	expect(page).to have_current_path( user_path(@user.id))
end
