When(/^I click on a collection$/) do
	click_link "Collection99"
end

Then(/^I should see collection name$/) do
	expect(page).to have_current_path( collection_path(@collection.id))
end

Then(/^I should see collection images$/) do
  page.all('.image')
end

Then(/^I should see image titles$/) do
  find_link @collection.items.first.title
end

Then(/^I should not see item images$/) do
	@collection.items = []
	visit collection_path(@collection)
	expect(page).not_to have_selector(:xpath, "//a[@title='show image']")
end

Then(/^I should see a message saying "([^"]*)"$/) do |message|
  expect(page).to have_content(message)
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

When(/^I click on the button to add an image$/) do
	xhr :get, '/fetch_new_form', collection_id: @collection.id, format: :js
	sleep 3
	expect(page).to have_content( "Add an image to this collection" )
	# get '/fetch_new_form', collection_id: @collection.id, xhr: true, format: :js  // doesn't work

end

Then(/^I should see add image form appear$/) do
	save_and_open_page
	# expect(page).to have_css("#gotcha", visible: :visible)
end

Then(/^I should see the list of collections from the same gallery$/) do
  expect(page).to have_current_path( gallery_collections_path(@gallery.id))
end

When(/^I click on Delete$/) do
  page.find("li", id:"item-#{@item.id}").click_link('Delete')
end

Then(/^the image is no longer visible$/) do
	expect(page).not_to have_selector("#item-#{@item.id}")
end

Then(/^I go to "([^"]*)" page$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end
