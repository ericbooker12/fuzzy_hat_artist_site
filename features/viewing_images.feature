Feature: Viewing Images
	In order to view the artist's work
	As a user
	I want view artist's images

Scenario: Choosing a Gallery
	Given I am on the home page
	When I click on a gallery
	Then I see a list of that Gallery's series

Scenario: Choosing a Series
	Given I am on the series index page
	When I click on a series
	Then I see a list of thumbnails from that series