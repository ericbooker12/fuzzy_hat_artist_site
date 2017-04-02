Feature: Uploading Images
  In order to show my artwork in online gallery
  As an artist
  I want to upload images to collections on my site
  And add title and dimensions if I have them

    Background: Logged in as an artist
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
      And I am on the collections page

    Scenario: clicking on add image
  		When I click on the button to add an image
  		Then I should see add image form appear

    Scenario: upload an image
      When I upload an image
      And I enter a title and collection
      And I click submit
      Then I should see the image on the same collection page

    Scenario: not uploading anything
      When I fail to attach an image
      Then I should not be allowed to submit

    Scenario: not specifying a title
      When I fail to add a title
      Then a title should be assigned
