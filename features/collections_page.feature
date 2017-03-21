
Feature: collection page features
	In order to organize my artwork into relevant collections
	As an artist
	I want to manage a collection that is part of a gallery

	Background: Logging in an artist
		Given I am on the user log in page
		And an artist
		And a gallery
		And a collection
		And I fill in "Email" with "be@bop.com"
		And I fill in "Password" with "123456"
		When I click the button "Log in"
		Then I am on the user profile page

@wip
	Scenario: Viewing a collection
		When I click on a collection
		Then I should see collection name
		And I should see collection images
		And I should see image titles

	Scenario: Confirming navigation
		When I click on "Home"
		Then I should see the user profile
		When I click on "Edit"
		Then I should see the edit collection page
		When I click on "New"
		Then I should see add collection page
		When I click on "Back"
		Then I should see the list of collections from the same gallery
		When I click on "Archive"
		Then the collection is no longer visible

	Scenario: Managing images
		When I click on "Add Image"
		Then I go to "New Image" page
		When I click on "Remove Image"
		Then the image is no longer visible
		When I click on "Edit Image"
		Then I go to "Edit Image" page
		When I click, drag and reorder images
		Then the images stay in their new order

	Scenario: Collection contains no images



