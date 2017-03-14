Given(/^I am on the home page$/) do
	visit galleries_path
end

When(/^I click on a gallery$/) do
	click_link "Glass"
end

Then(/^I see a list of that Gallery's series$/) do
	find('h1').should have_content "Series"
end