Given(/^I visit the collection's edit page$/) do
  visit edit_collection_path(@collection)
end

Then(/^the collection is no longer visible$/) do
  visit gallery_collections_path(@collection.gallery_id)
  expect(page).not_to have_content(@collection.name)
end

When(/^I select a different gallery$/) do
  select(@new_gallery.name, :from => 'Gallery')
end

When(/^I click "([^"]*)"$/) do |link_name|
  click_button link_name
end

Then(/^the collection now belong to a different gallery$/) do
  visit collection_path(@collection)
  expect(page).to have_content(@new_gallery.name)
end
