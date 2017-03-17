Feature: Logging in a user
	In order to add do administration of galleries and collections
	As an artist
	I want to log in to website

Scenario: Logging in
	Given I already have an account
  Given I am not logged in
  When I visit new_user_session_path
  And fill_in "Email", with: "be@bop.com"
  And fill_in "Password", with: "123456"
  And click_button "Log in"
  Then I see "Log out" link
