Feature: Viewing Images
	In order to view the artist's work
	As a user
	I want to view artist's images

	Background:
		Given a gallery
		And a series
		And a collection of galleries

	Scenario: Choosing a Gallery
		Given I am on the home page
		When I follow the medium "Glass"
		Then I see a list of that Gallery's series
		And I see an image for each series

	Scenario: Choosing a Series
		Given I am on the series index page
		When I follow the series "Series99"
		Then I see a list of items from that series
		And I see many image thumbnails

	Scenario: Entering slide show mode
		Given I am on the item index page
		When I click on a thumbnail
		Then I see the image in slideshow
