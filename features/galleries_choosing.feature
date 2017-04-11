Feature: Viewing Galleries
	In order to view the artist's work
	As a user
	I want to view artist's galleries

	Background:
		Given an artist
		And a gallery
		And a collection
		And a collection of galleries
		And an item

	Scenario: Choosing a Gallery
		Given I am on the home page
		When I follow the medium "Glass"
		Then I see a list of that Gallery's collections
		And I see an image for each collection

	Scenario: Gallery has no collections
		Given I am on the home page
		When I follow the medium "Glass"
		Then I should not see any collections
		And I should see a message saying "No collections added yet"
