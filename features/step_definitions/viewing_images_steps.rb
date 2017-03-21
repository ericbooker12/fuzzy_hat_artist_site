
# A gallery is a list of different series or mediums (oil paint, ceramics, etc)
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
