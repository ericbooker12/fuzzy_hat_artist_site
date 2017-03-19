@wip
Feature: Profile Page
	As an admin user
	I want to go to the profile page
	So that I add, edit and create new galleries

Background:
	Given I am on the user profile page
  Given I am logged in:
  	| email  | password |
  	| e@b.com| 123456   |
  And I am on the user profile page
  And I have these galleries:
  	| name        | archive |
  	| Glass       | false   |
  	| Photagraphy | false   |
  	| Ceramics    | false   |
  And each gallery has these collections:
  	| name        | archive | thumbnail | gallery_id |
  	| Glass       | false   | 1         | 1          |
  	| Photagraphy | false   | 1         | 2          |
  	| Ceramics    | false   | 1         | 3          |

Scenario: Adding a gallery
	Given I am on the user profile page
	And I press "Add New Gallery"
	And show me the page
	Then I should see the edit gallery page








