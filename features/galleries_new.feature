Feature: Creating a new gallery
In order to organize my artwork by medium
As an artist
I want to create a new gallery

  Background:
    Given I am on the user log in page
    And an artist
    And I fill in "Email" with "be@bop.com"
    And I fill in "Password" with "123456"
    And I click the button "Log in"
    Then I am on the user profile page
    And I click on "Add new gallery"

  Scenario: create a new gallery
    When I enter "Underwater Basket Weaving"
    And I click "Create Gallery"
    Then I should see "Underwater Basket Weaving" on my profile page

  Scenario: don't enter a name
    When I fail to enter a name
    And I click "Create Gallery"
    Then I should not be allowed to submit
