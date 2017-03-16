Feature: Assigning a thumbnail image to a Series
  In order to give a representative example of a series
  As an artist
  I want to assign a thumbnail image to a series

  Background:
    # Given I am logged in
    And on a series page
    And I follow the "Add Thumbnail" link

  Scenario: change the series thumbnail
    When I click on an image
    And I click "save as thumbnail"
    Then I see success message 'Saved!'
    And 
