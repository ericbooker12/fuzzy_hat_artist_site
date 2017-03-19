
Feature: Profile Page
	As an admin user
	I want to go to the profile page
	So that I add, edit and create new galleries

Background: Creating a user
  Given I am on the user log in page
  And a user
  And I fill in email with "e@b.com"
  And I fill in Password with "123456"
  When I click on "Log in"
  Then I am on the user profile page

Scenario: Adding a gallery
	Given "Add Gallery" Button exists
	When I press "Add New Gallery"
	And show me the page
	Then I should see the edit gallery page








