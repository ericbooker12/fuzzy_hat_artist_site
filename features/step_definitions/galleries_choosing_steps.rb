# Choosing a gallery
When(/^I follow the medium "([^"]*)"$/) do |medium|
	click_on medium
end

Then(/^I see a list of that Gallery's collections$/) do
	page.find('li', text: @collection.name)
end

Then(/^I see an image for each collection$/) do
  page.all('.image')
end

# Gallery has no collections
Then(/^I should not see any collections$/) do
  @gallery.collections = []
	visit gallery_collections_path(@gallery)
	expect(page).not_to have_selector(:xpath, "//a[@title='show image']")
end
