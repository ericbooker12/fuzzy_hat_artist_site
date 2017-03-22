# Creating Collection
Given(/^on my profile page$/) do
  visit user_path(@gallery.id)
end

Then(/^I should see the collection on its own page$/) do
	save_and_open_page
	expect(page).to have_content("Collection was successfully created.")
end

# Setting thumbnail for featured image
Given(/^on a collection page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I visit "([^"]*)"$/) do |new_collection|
	find_link(new_collection)
  visit new_gallery_collection_path(@gallery.id)
end

When(/^I click on an image$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I see success message 'Saved!'$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
