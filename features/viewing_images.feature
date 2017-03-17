Feature: Viewing Images
	In order to view the artist's work
	As a user
	I want to view artist's images

	Background:
		Given a user
		And a gallery
		And a collection
		And a collection of galleries

	Scenario: Choosing a Gallery
		Given I am on the home page
		When I follow the medium "Glass"
		Then I see a list of that Gallery's collection
		And I see an image for each collection

	Scenario: Choosing a Collection
		Given I am on the collection index page
		When I follow the collection "Collection99"
		Then I see a list of items from that collection
		And I see many image thumbnails

	Scenario: Entering slide show mode
		Given I am on the item index page
		When I click on a thumbnail
		Then I see the image in slideshow
