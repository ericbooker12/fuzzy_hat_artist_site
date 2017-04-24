When(/^I click on a thumbnail$/) do
  page.find('li', id:"item-#{@item.id}").click_link('show image')
end

Then(/^I see the image in slideshow$/) do
  page.should have_selector("img[src$='image1.jpg']")
end
