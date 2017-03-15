Given(/^I am on the home page$/) do
	@g = Gallery.create(name: "Glass")
	@galleries = Gallery.all
	visit root_path
	# save_and_open_page
end

When(/^I click on a gallery$/) do
	# visit gallery_groups_path(@g.id)
	click_on 'gallery'
end

Then(/^I see a list of that Gallery's series$/) do
	# find('h1').should have_content "Series"
	expect(body).to include "Series"
end




Given(/^I am on the series index page$/) do
	@g = Gallery.create(name: "Ceramics")
	@s = Group.create(name: "Series99", thumbnail: 1, gallery_id: @g.id)
  visit gallery_groups_path(@g.id)
end

When(/^I click on a series$/) do
	click_on 'series'
end

Then(/^I see a list of thumbnails from that series$/) do
	visit group_path(@s)
end
