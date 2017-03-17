Feature: Creating a new collection
In order to organize my artwork into relevant collections
As an artist
I want to create a new collection that is part of a gallery

  Background:
    # Given I am logged in
    And on my profile page
    And I follow the "New Collection" link

  Scenario: create a new collection
    When I enter a name and gallery
    And I click submit
    Then I should see the collection on its own page

  Scenario: don't choose a gallery
    When I fail to choose a gallery
    Then I should not be allowed to submit

  Scenario: don't enter a title
    When I fail to enter a title
    Then I should not be allowed to submit
