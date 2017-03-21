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