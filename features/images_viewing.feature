Feature: Viewing Images
	In order to view the artist's work
	As a user
	I want to view artist's images

	Background:
		Given I am on the user log in page
		And an artist
		And a gallery
		And a collection
		And I fill in "Email" with "be@bop.com"
		And I fill in "Password" with "123456"
		And I click the button "Log in"
		Then I am on the user profile page
		And I click on a collection

	Scenario: Entering slide show mode
		When I click on a thumbnail
		Then I see the image in slideshow
