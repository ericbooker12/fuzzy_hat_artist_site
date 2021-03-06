
Feature: Profile Page
	As an admin user
	I want to have an admin profile page
	So that I add, edit and create new galleries and collections

Background: Logging in an artist
	Given I am on the user log in page
	And an artist
	And I fill in "Email" with "be@bop.com"
	And I fill in "Password" with "123456"
	When I click the button "Log in"
	Then I am on the user profile page

Scenario: Following add new gallery link
	When I click on "New gallery"
	Then I should see the add gallery page

Scenario: Adding a new gallery
	Given I am on the create gallery page
	And I fill in name with "Coffee Cups"
	When I click the button "Create Gallery"
	Then I should see the user profile
	And I should see the gallery "Coffee Cups"

Scenario: don't enter a name
	Given I am on the create gallery page
	And I fill in name with ""
	When I click the button "Create Gallery"
	Then I should not be allowed to submit

Scenario: add a new collection
	Given a gallery
	And I am on the user profile page
	When I click on the first link to add new Collection
	Then I should see add collection page
	When I fill in Name with "Series 99" and press "Create Collection"
	Then I should see the collections show page
	And I should see the name of the collection

Scenario: don't enter a title
	Given a gallery
	Then I am on the user profile page
	And I click on the first link to add new Collection
	Then I should see add collection page
	When I fill in Name with "" and press "Create Collection"
	Then I should not be allowed to submit

Scenario: view archived galleries

Scenario: view archived collections
