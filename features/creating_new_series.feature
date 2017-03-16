Feature: Creating a new series
In order to organize my artwork into relevant groups
As an artist
I want to create a new series that is part of a gallery

  Background:
    # Given I am logged in
    And on my profile page
    And I follow the "New Series" link

  Scenario: create a new series
    When I enter a name and gallery
    And I click submit
    Then I should see the series on its own page

  Scenario: don't choose a gallery
    When I fail to choose a gallery
    Then I should not be allowed to submit

  Scenario: don't enter a title
    When I fail to enter a title
    Then I should not be allowed to submit
