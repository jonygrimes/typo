Feature: Go to Category Page
  As an Administrator
  In order to see the posts
  I want to go to the category page

  Scenario: Make Category
    Given the blog is set up
    And I am logged into the admin panel
    Given I am on the new categories page
    When I fill in "category_name" with "NewCat"
    And I press "Save"
    And I reload the new categories page
    Then I should see "NewCat"
    When I fill in "category_name" with "NewCat2"
    And I press "Save"
    And I reload the new categories page
    Then I should see "NewCat2"

  Scenario: Edit Category
    Given the blog is set up
    And I am logged into the admin panel
    Given I am on the new categories page
    When I fill in "category_name" with "NewCat"
    And I press "Save"
    And I reload the new categories page
    Then I should see "NewCat"
    When I click on "Edit"
    And fill in "category_name" with "NewCat3"
    And fill in "category_description" with "This is a rrreeeaaallyy great description"
    And I press "Save"
    Then I should see "NewCat3"
    And I should see "This is a rrreeeaaallyy great description"

  Scenario: Delete Category
    Given the blog is set up
    And I am logged into the admin panel
    Given I am on the new categories page
    When I fill in "category_name" with "NewCat4"
    And I press "Save"
    And I reload the new categories page
    Then I should see "NewCat4"
    When I click on "delete_NewCat4"
    And I press "delete"
    And I reload the new categories page
    Then I should not see "NewCat4"
    
