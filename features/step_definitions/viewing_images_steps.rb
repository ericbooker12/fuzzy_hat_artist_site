

Given(/^a gallery$/) do
	@g = Gallery.create(name: "Glass")
end

Given(/^a series$/) do
  @s = Group.create(name: "Series99", thumbnail: 1, gallery_id: @g.id)
	@s.items.build(title: 'A pretty vase', image_file_name: "image1")
	@s.save
end

Given(/^a collection of galleries$/) do
  @galleries = Gallery.active
end

# Choosing a gallery
When(/^I follow the medium "([^"]*)"$/) do |medium|
	click_on medium
end

Then(/^I see a list of that Gallery's series$/) do
	expect(body).to include "Series"
end

Then(/^I see an image for each series$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

# Choosing a series
When(/^I follow the series "([^"]*)"$/) do |series|
	click_on series
end

Then(/^I see a list of items from that series$/) do
	expect(body).to include "Artwork"
	# find("a href[title='show image']").click      ## How to refer to images??
end

Then(/^I see many image thumbnails$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

# Viewing images
When(/^I click on a thumbnail$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I see the image in slideshow$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
