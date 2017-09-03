Feature: Assigning a thumbnail image to a Collection
  In order to give a representative example of a collection
  As an artist
  I want to assign a thumbnail image to a collection

  Background:
    Given I am on the user log in page
    And an artist
    And a gallery
    And a new gallery
    And a collection
    And I fill in "Email" with "be@bop.com"
    And I fill in "Password" with "123456"
    And I click the button "Log in"
    Then I am on the user profile page
    When I click on a collection

  Scenario: change the collection thumbnail
    And I click "Feature"
    Then I see success message "Thumbnail set"
