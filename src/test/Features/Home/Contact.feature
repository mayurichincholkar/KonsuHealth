Feature: KonsuHealth Contact page in settings
  Background: Visit the home page
    Given I launch chrome browser
    When I visit home page
    Then I verify that KonsuHealth logo is present on page
    And I click on Contact
    And I should see the contact form on screen

  Scenario: Verify functionality for contact settings page for close button
    When I am on contact settings page
    And I click close button
    Then I should be on the same page

  Scenario: Verify functionality for contact settings page for blank fields
    When I am on contact settings page
    And I keep first name as ""
    And I keep last name as ""
    And I keep company as ""
    And I keep email as ""
    And I keep phone number as ""
    And I keep message as ""
    Then I should be on the same page
    And I click on submit button
    And I close driver instance

  Scenario Outline: Verify functionality for contact settings page with some blank fields
    When I am on contact settings page
    And I keep first name as "<first name>"
    And I keep last name as "<last name>"
    And I keep company as "<company>"
    And I keep email as "<email>"
    And I keep phone number as "<phone number>"
    And I keep message as "<message>"
    Then I should be on the same page
    And I click on submit button
    And I close driver instance

    Examples:
      |  first name  |  last name  |   company    |               email                |    phone number    |            message          |
      |   mayuri     |             |              |  mayuri.chincholkar@webshar.org    |     1234567890     |                             |
      |   mayuri     | chincholkar |              |                                    |                    |                             |
      |              |             |   WebShar    |                                    |     1234567890     |              abc            |
      |              |             |              |  mayuri.chincholkar@webshar.org    |                    |                             |
      |   mayuri     | chincholkar |   WebShar    |                                    |                    |                             |
      |              |             |   WebShar    |                                    |                    |                             |

  Scenario: Verify functionality for contact settings page with all fields filled correctly with not clicked checkbox
    When I am on contact settings page
    And I keep first name as "mayuri"
    And I keep last name as "chincholkar"
    And I keep company as "WebShar"
    And I keep email as "mayuri.chincholkar@webshar.org"
    And I keep phone number as "1234567890"
    And I keep message as "abc"
    Then I should be on the same page
    And I click on submit button
    And I close driver instance

  Scenario: Verify functionality for contact settings page with all fields filled correctly with clicked checkbox
    When I am on contact settings page
    And I keep first name as "mayuri"
    And I keep last name as "chincholkar"
    And I keep company as "WebShar"
    And I keep email as "mayuri.chincholkar@webshar.org"
    And I keep phone number as "1234567890"
    And I keep message as "abc"
    Then I should be on the same page
    And I should see dialog message box as "Thank you for contacting us! We will be in touch shortly!"
    And I click on submit button
    And I close driver instance