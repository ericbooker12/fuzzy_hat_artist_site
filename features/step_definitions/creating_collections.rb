# Creating Collection
Given(/^on my profile page$/) do
  visit user_path(@user.id)
end

When(/^I enter a name and gallery$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I click submit$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should see the collection on its own page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I fail to choose a gallery$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I should not be allowed to submit$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I fail to enter a title$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

# Setting thumbnail for featured image
Given(/^on a collection page$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I visit "([^"]*)"$/) do |new_collection|
	find_link(new_collection)
  visit new_gallery_collection_path(@g.id)
end

When(/^I click on an image$/) do
  pending # Write code here that turns the phrase above into concrete actions
end

When(/^I click "([^"]*)"$/) do |arg1|
  pending # Write code here that turns the phrase above into concrete actions
end

Then(/^I see success message 'Saved!'$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
