Feature: Uploading Images
  In order to show my artwork in online gallery
  As an artist
  I want to upload images to collections on my site
  And add title and dimensions if I have them

  Background:
    # Given I am logged in
    And on my profile page
    And I follow the "New Image" link

  Scenario: upload an image
    When I upload an image
    And I enter a title and collection
    And I click submit
    Then I should see the image on its collection page

  Scenario: not uploading anything
    When I fail to attach an image
    Then I should not be allowed to submit

  Scenario: not specifying a title
    When I fail to add a title
    Then a title should be assigned

  Scenario: not specifying a collection
    When I fail to specify a collection
    Then I should not be allowed to submit
