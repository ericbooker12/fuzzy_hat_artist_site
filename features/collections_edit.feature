Feature: Collections edit page
  In order to change my collections
  As an artist
  I should be able to edit, archive and delete a collection

  Background: Logged in as an artist
    Given I am on the user log in page
    And an artist
    And a gallery
    And a new gallery
    And a collection
    And I fill in "Email" with "be@bop.com"
    And I fill in "Password" with "123456"
    And I click the button "Log in"
    And I visit the collection's edit page

  Scenario: Archiving a collection
    When I click on "Archive"
    Then the collection is no longer visible

  Scenario: Changing the gallery
    When I select a different gallery
    And I click "Update Collection"
    Then the collection now belong to a different gallery

  Scenario: Attempting to delete collection if it has images
    When I click to Destroy collection
    Then I should see a message saying "Collection could not be destroyed because it has images in it"

  Scenario: Deleting a collection if no images in it
    Given collection has no items
    When I click to Destroy collection
    Then the collection is no longer visible
