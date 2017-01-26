Feature: When user reach on the landing screen.
@javascript
Scenario: Reach on index screen
Given I go to the index screen
Then I should see POPULAR
And I wait for 05 seconds

@javascript
Scenario: Lading on product screen
Given I go to the index screen	
When I click the PRODUCTS link
When I click on the product
Then I should see CATEGORIES
