Feature: Collections Index
	In order to manage my collections
	As an artist
	I want to view and create collections

	Scenario: Clicking on archive
		Given I am on the collections page
		When I click on "Archive"
		Then the collection is no longer visible
