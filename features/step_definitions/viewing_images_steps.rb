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




Given(/^I am on the series index page$/) do
	g = Gallery.create(name: "Glass")
  visit gallery_groups_path(g.id)
end

When(/^I click on a series$/) do
	g = Gallery.create(name: "Kombucha")
	s = Group.create(name: "Series99", thumbnail: 1, gallery_id: g.id)
	visit gallery_group_path(g, s)
end

Then(/^I see a list of thumbnails from that series$/) do
  pending # Write code here that turns the phrase above into concrete actions
end