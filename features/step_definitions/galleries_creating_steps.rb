When(/^I enter "([^"]*)"$/) do |name|
  page.fill_in 'Name', :with => name
end

Then(/^I should see "([^"]*)" on my profile page$/) do |name|
  expect(page).to have_content(name)
end

When(/^I fail to enter a name$/) do
  page.fill_in 'Name', :with => ""
end
