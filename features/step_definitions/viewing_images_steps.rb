Given(/^I am on the home page$/) do
	visit root_path
end

When(/^I click on a gallery$/) do
	g = Gallery.create(name: "Glass")
	visit gallery_groups_path(g.id)
end

Then(/^I see a list of that Gallery's series$/) do
	find('h1').should have_content "Series"
end