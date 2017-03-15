Given(/^I am on the home page$/) do
	visit root_path
end

Given(/^I can choose from the artist's galleries$/) do
	# g = Gallery.create(name: "Glass")
	@g = Gallery.create(name: "Glass")
end

When(/^I click on a gallery$/) do
	visit gallery_groups_path(@g.id)
end

Then(/^I see a list of that Gallery's series$/) do
	# find('h1').should have_content "Series"
	expect(body).to include "Series"
end
