Feature: konsuHealth COVID_19_RTqPCR_Test_Order Page in settings
  Background: Login to the application
    Given I launch chrome browser
    When I visit home page
    And I click on COVID-19 Tests page
    And I should go to the COVID-19 Tests page
    And I click on Purchase now
    And I should go to the Purchase now page
    And I click on checkout button
    Then I should go to the Cart page
    And I verify that 'Cart' title is present on screen


  Scenario: Verify functionality for Cart settings page for empty coupon code
    When I am on Cart page
    And keep coupon code as ''
    Then I should be on the same page
    And I close driver instance

  Scenario: Verify functionality for Cart settings page for wrong coupon code
    When I am on Cart page
    And I keep coupon code as 'abcdef'
    And I click on Apply Coupon
    Then I should see the message as "Coupon "abcdef" does not exist!"
    And I close driver instance

  Scenario: Verify functionality for Cart settings page Update Cart button for not updated cart
    When I am on Cart page
    And I keep Qualtity as <1-6> without change
    And I click on Update Cart button
    Then I should be on the same page
    And I close driver instance

  Scenario: Verify functionality for Cart settings page Update Cart button for updated cart
    When I am on Cart page
    And I keep Qualtity as <1-6> with change
    And I click on Update Cart button
    Then I should see the message as "Cart updated."
    And I close driver instance

  Scenario: Verify functionality for Cart settings page for Proceed to Checkout button
    When I am on Cart page
    And I click on Proceed to Checkout button
    Then I should go to the checkout page
    And I verify that 'Checkout' title is present on page
    And I close driver instance
