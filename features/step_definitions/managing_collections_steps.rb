When(/^I click on a collection$/) do
	click_link "Collection99"
end

Then(/^I should see collection name$/) do
	expect(page).to have_current_path( collection_path(@collection.id))
end

Then(/^I should see collection images$/) do
  page.find('.image')
end

Then(/^I should see image titles$/) do
  find_link @collection.items.first.title
end

Given(/^I am on the collections page$/) do
 visit collection_path(@collection.id)
end

Then(/^I should see the edit collection page$/) do
	expect(page).to have_current_path( edit_collection_path(@collection.id))
end

Then(/^I should see add image page$/) do
  expect(page).to have_current_path( new_collection_item_path(@collection.id))
end

Then(/^I should see the list of collections from the same gallery$/) do
  expect(page).to have_current_path( gallery_collections_path(@gallery.id))
end

Then(/^the collection is no longer visible$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
