Given(/^I am on the home page$/) do
	visit root_path
	# save_and_open_page
end

Given(/^I am on the collection index page$/) do
  visit gallery_collections_path(@gallery)
end

Given(/^I am on the item index page$/) do
  visit collection_items_path(@collection)
end
