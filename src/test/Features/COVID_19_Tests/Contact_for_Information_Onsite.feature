Feature: KonsuHealth Purchase_now page in settings
  Background: Visit the home page
    Given I launch chrome browser
    When I visit home page
    And I click on COVID-19 Tests
    And I redirected to the COVID-19 Tests page
    And I click on Contact for Information button for On-Site Test
    Then I redirected to contact page
    And I verify that 'Contact' title is present on page

  Scenario: Verify functionality for contact settings page for blank fields with unchecked checkbox
    When I am on contact settings page
    And I keep first name as ""
    And I keep last name as ""
    And I keep company as ""
    And I keep email as ""
    And I keep phone number as ""
    And I keep message as ""
    And I unchecked the checkbox 'I agree to the terms and conditions'
    Then I remain on the same page
    And I click on submit button
    And I close driver instance

  Scenario: Verify functionality for contact settings page for blank fields with checked checkbox
    When I am on contact settings page
    And I keep first name as ""
    And I keep last name as ""
    And I keep company as ""
    And I keep email as ""
    And I keep phone number as ""
    And I keep message as ""
    And I checked the checkbox 'I agree to the terms and conditions'
    Then I remain on the same page
    And I click on submit button
    And I close driver instance

  Scenario Outline: Verify functionality for contact settings page with some blank fields with unchecked checkbox
    When I am on contact settings page
    And I keep first name as "<first name>"
    And I keep last name as "<last name>"
    And I keep company as "<company>"
    And I keep email as "<email>"
    And I keep phone number as "<phone number>"
    And I keep message as "<message>"
    Then I remain on the same page
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

  Scenario Outline: Verify functionality for contact settings page with some blank fields with checked checkbox
    When I am on contact settings page
    And I keep first name as "<first name>"
    And I keep last name as "<last name>"
    And I keep company as "<company>"
    And I keep email as "<email>"
    And I keep phone number as "<phone number>"
    And I keep message as "<message>"
    Then I remain on the same page
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

  Scenario: Verify functionality for contact settings page with all fields filled correctly with unchecked checkbox
    When I am on contact settings page
    And I keep first name as "mayuri"
    And I keep last name as "chincholkar"
    And I keep company as "WebShar"
    And I keep email as "mayuri.chincholkar@webshar.org"
    And I keep phone number as "1234567890"
    And I keep message as "abc"
    Then I remain on the same page
    And I click on submit button
    And I close driver instance

  Scenario: Verify functionality for contact settings page with all fields filled correctly with checked checkbox
    When I am on contact settings page
    And I keep first name as "mayuri"
    And I keep last name as "chincholkar"
    And I keep company as "WebShar"
    And I keep email as "mayuri.chincholkar@webshar.org"
    And I keep phone number as "1234567890"
    And I keep message as "abc"
    Then I remain on the same page
    And I should see dialog box with message 'Thank you for contacting us! We will be in touch shortly!'
    And I click on submit button
    And I close driver instance