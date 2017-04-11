Feature: Logging in a user
	In order to add do administration of galleries and collections
	As an artist
	I want to log in to website

Scenario: Logging in
	Given I am on the user log in page
	And an artist
	And a gallery
	And a new gallery
	And a collection
	And I fill in "Email" with "be@bop.com"
	And I fill in "Password" with "123456"
	And I click the button "Log in"
	Then I am on the user profile page
  Then I see "Log out" link
