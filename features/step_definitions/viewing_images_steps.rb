

Given(/^a gallery$/) do
	@g = Gallery.create(name: "Glass")
end

Given(/^a series$/) do
  @s = Group.create(name: "Series99", thumbnail: 1, gallery_id: @g.id)
	@s.items.build(title: 'A pretty vase', image: '/image1.jpg')
	@s.save
end

Given(/^a collection of galleries$/) do
  @galleries = Gallery.active
end

# Viewing a gallery
When(/^I follow "([^"]*)"$/) do |medium|
	# visit gallery_groups_path(@g.id)
	click_on medium
end

Then(/^I see a list of that Gallery's series$/) do
	# find('h1').should have_content "Series"
	expect(body).to include "Series"
end

# Viewing a series
When(/^I click on a series$/) do
	click_on 'series'
end

Then(/^I see a list of thumbnails from that series$/) do
	visit group_path(@s)
	save_and_open_page
	click_on 'show image'

	# find("a href[title='show image']").click
end

# Viewing images
When(/^I click on a thumbnail$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I see the image in slideshow$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
