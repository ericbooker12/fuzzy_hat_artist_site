Feature: Creating a new collection
  In order to organize my artwork into relevant collections
  As an artist
  I want to create a new collection that is part of a gallery

  Background:
    Given a user
    And a gallery
    And I am not logged in
    When I visit new_user_session_path
    And fill_in "Email", with: "be@bop.com"
    And fill_in "Password", with: "123456"
    And click_button "Log in"
    And on my profile page

  Scenario: create a new collection
    When I visit "New Collection"
    And fill_in "Name", with: "Anything"
    And fill_in "Thumbnail", with: "1"
    And click_button "Create Collection"
    Then I should see the collection on its own page

  Scenario: don't enter a title
    When I visit "New Collection"
    And fill_in "Name", with: ""
    And fill_in "Thumbnail", with: "1"
    And click_button "Create Collection"
    Then I should not be allowed to submit

