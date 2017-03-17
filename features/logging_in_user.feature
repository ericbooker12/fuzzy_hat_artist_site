Feature: Logging in a user
	In order to add do administration of galleries and collections
	As an artist
	I want to log in to website

  Background:
    Given I already have an account

	Scenario: Logging in
    Given I am not logged in
    When I visit new_user_session_path
    And fill_in Email, with: "jim@bo.com"
    And fill_in Password, with: "password"
    And click_button "Log in"
    Then I see "Log out" link
