
Feature: collection page features
	In order to organize my artwork into relevant collections
	As an artist
	I want to manage a collection that is part of a gallery

	Background: Logged in as an artist
		Given I am on the user log in page
		And an artist
		And a gallery
		And a collection
		And I fill in "Email" with "be@bop.com"
		And I fill in "Password" with "123456"
		When I click the button "Log in"
		Then I am on the user profile page

	Scenario: Viewing a collection
		When I click on a collection
		Then I should see collection name
		And I should see collection images
		And I should see image titles

	Scenario: Viewing a collection that has no items
		When I click on a collection
		Then I should see collection name
		And I should not see item images
		And I should see a message saying  "There are no images in this collection"

	Scenario: Clicking on home
		Given I am on the collections page
		When I click on "Home"
		Then I should see the user profile

	Scenario: Clicking on edit
		Given I am on the collections page
		When I click on "Edit"
		Then I should see the edit collection page

	Scenario: Clicking on back
		Given I am on the collections page
		When I click on "Back"
		Then I should see the list of collections from the same gallery

	Scenario: Managing images
		Given I am on the collections page
		And an item
		When I click on Delete
		Then the image is no longer visible
		When I click on "Edit"
		Then I go to "Edit Image" page
