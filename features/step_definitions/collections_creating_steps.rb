Given(/^on my profile page$/) do
  visit user_path(@gallery.id)
end

Then(/^I should see the collection on its own page$/) do
	save_and_open_page
	expect(page).to have_content("Collection was successfully created.")
end

Given(/^on a collection page$/) do
  expect(page).to have_current_path( collection_path(@collection.id))
end

When(/^I visit "([^"]*)"$/) do |new_collection|
	find_link(new_collection)
  visit new_gallery_collection_path(@gallery.id)
end
