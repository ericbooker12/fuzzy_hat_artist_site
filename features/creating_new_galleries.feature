Feature: Creating a new gallery
In order to organize my artwork by medium
As an artist
I want to create a new gallery

  Background:
    # Given I am logged in
    And on my profile page
    And I follow the "New Gallery" link

  Scenario: create a new gallery
    When I enter a name
    And I click submit
    Then I should see the gallery my profile page

  Scenario: don't enter a name
    When I fail to enter a name
    Then I should not be allowed to submit
