Feature: Assigning a thumbnail image to a Collection
  In order to give a representative example of a collection
  As an artist
  I want to assign a thumbnail image to a collection

  Background:
    # Given I am logged in
    And on a collection page
    And I follow the "Add Thumbnail" link

  Scenario: change the collection thumbnail
    When I click on an image
    And I click "save as thumbnail"
    Then I see success message 'Saved!'
     
