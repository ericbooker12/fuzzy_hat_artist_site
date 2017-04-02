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
  click_link_or_button link_name
end

Then(/^I see success message "([^"]*)"$/) do |notice|
  expect(page).to have_content(notice)
end

Then(/^the collection now belong to a different gallery$/) do
  visit collection_path(@collection)
  expect(page).to have_content(@new_gallery.name)
end

When(/^I click to Destroy collection$/) do
  page.driver.submit :delete, "/collections/#{@collection.id}", {}
end

Given(/^collection has no items$/) do
  @collection.items = []
end

Then(/^I no longer see collection$/) do
  expect(page).not_to have_content(@collection.name)

end
