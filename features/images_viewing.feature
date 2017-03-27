Feature: Viewing Images
	In order to view the artist's work
	As a user
	I want to view artist's images

	Background:
		Given an artist
		And a gallery
		And a collection
		And an item

	Scenario: Entering slide show mode
		Given I am on the item index page
		When I click on a thumbnail
		Then I see the image in slideshow
