Feature: konsuHealth Cart Page in settings
  Background: Visit the home page
    Given I launch chrome browser
    When I visit home page
    Then I verify that KonsuHealth logo is present on pge
    And I click on Cart
    And I redirected to the Cart page

  Scenario: Verify functionality for Cart settings page for zero order
    When I am on Cart page
    And I ordered zero test
    Then I should see the message 'Your cart is currently empty.'
    And I click on Return to shop button
    And I redirected to shop page
    And I close driver instance

