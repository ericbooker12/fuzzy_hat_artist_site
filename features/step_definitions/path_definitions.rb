Given(/^I am on the home page$/) do
	visit root_path
	# save_and_open_page
end

Given(/^I am on the series index page$/) do
  visit gallery_groups_path(@g.id)
end
