Given(/^a user$/) do
	@user = User.create(email: "be@bop.com", password: "123456")
end

Given(/^a gallery$/) do
	@g = Gallery.create(name: "Glass", user_id: @user.id)
end

Given(/^a collection$/) do
  @s = Collection.create(name: "Collection99", thumbnail: 1, gallery_id: @g.id)
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

Then(/^I see a list of that Gallery's collection$/) do
	expect(body).to include "Collection"
end

Then(/^I see an image for each collection$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

# Choosing a collection
When(/^I follow the collection "([^"]*)"$/) do |collection|
	click_on collection
end

Then(/^I see a list of items from that collection$/) do
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
