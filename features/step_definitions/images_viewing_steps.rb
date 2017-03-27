# Viewing images
When(/^I click on a thumbnail$/) do
  page.find('li', id:"thumb-#{@item.id}").click_link('image thumb')
end

Then(/^I see the image in slideshow$/) do
  pending # Write code here that turns the phrase above into concrete actions
end
