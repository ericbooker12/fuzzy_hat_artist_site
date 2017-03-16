x

	Background:
		Given a gallery
		And a series
		And a collection of galleries

	Scenario: Choosing a Gallery
		Given I am on the home page
		When I follow "Glass"
		Then I see thumbnails of that Gallery's series

	Scenario: Choosing a Series
		Given I am on the series index page
		When I click on a series
		Then I see a list of thumbnails from that series

	Scenario: Entering slide show mode
		Given I am on the series index page
		When I click on a thumbnail
		Then I see the image in slideshow
