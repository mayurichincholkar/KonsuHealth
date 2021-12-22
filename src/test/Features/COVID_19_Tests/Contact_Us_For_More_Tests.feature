Feature: konsuHealth Contact_Us_For_More_Tests Page in settings
  Background: Visit the home page
    Given I launch chrome browser
    When I visit home page
    And I click on COVID-19 Tests page
    And I redirected to COVID-19 Tests page
    And I click on 'For orders over 6 or if you need to return your tests in multiple batches please contact us here.'
    Then I should see to Contact Us For More Tests form
    And I verify that 'Contact Us For More Tests' title is present on form

  Scenario: Verify functionality for Contact_Us_For_More_Tests settings page for close button
    When I am on Contact_Us_For_More_Tests settings page
    And I click close button
    Then I remain on the same page

  Scenario: Verify functionality for Contact_Us_For_More_Tests settings page for blank fields with unchecked checkbox
    When I am on Contact_Us_For_More_Tests settings page
    And I keep first name as ""
    And I keep last name as ""
    And I keep email as ""
    And I keep Number of Employees as ""
    And I keep Number of Locations as ""
    And I keep Number Tests Needs as ""
    And I unchecked the checkbox 'I agree to the terms and conditions'
    Then I remain on the same page
    And I click on submit button
    And I close driver instance

  Scenario: Verify functionality for Contact_Us_For_More_Tests settings page for blank fields with checked checkbox
    When I am on Contact_Us_For_More_Tests settings page
    And I keep first name as ""
    And I keep last name as ""
    And I keep email as ""
    And I keep Number of Employees as ""
    And I keep Number of Locations as ""
    And I keep Number Tests Needs as ""
    And I checked the checkbox 'I agree to the terms and conditions'
    Then I remain on the same page
    And I click on submit button
    And I close driver instance

  Scenario Outline: Verify functionality for Contact_Us_For_More_Tests settings page with some blank fields with unchecked checkbox
    When I am on Contact_Us_For_More_Tests settings page
    And I keep first name as "<first name>"
    And I keep last name as "<last name>"
    And I keep email as "<email>"
    And I keep Number of Employees as "<Number of Employees>"
    And I keep Number of Locations as "<Number of Locations>"
    And I keep Number Tests Needs as "<Number Tests Needs>"
    Then I remain on the same page
    And I click on submit button
    And I close driver instance

    Examples:
      |  first name  |  last name  |               email                | Number of Employees | Number of Locations | Number Tests Needs |
      |   mayuri     |             |  mayuri.chincholkar@webshar.org    |          11         |          8          |                    |
      |   mayuri     | chincholkar |                                    |                     |          5          |        18          |
      |              |             |                                    |          40         |          16         |                    |
      |              |             |  mayuri.chincholkar@webshar.org    |                     |                     |        10          |
      |   mayuri     | chincholkar |                                    |                     |                     |         3          |


  Scenario Outline: Verify functionality for Contact_Us_For_More_Tests settings page with some blank fields with checked checkbox
    When I am on Contact_Us_For_More_Tests settings page
    And I keep first name as "<first name>"
    And I keep last name as "<last name>"
    And I keep email as "<email>"
    And I keep Number of Employees as "<Number of Employees>"
    And I keep Number of Locations as "<Number of Locations>"
    And I keep Number Tests Needs as "<Number Tests Needs>"
    Then I remain on the same page
    And I click on submit button
    And I close driver instance

    Examples:
      |  first name  |  last name  |               email                | Number of Employees | Number of Locations | Number Tests Needs |
      |   mayuri     |             |  mayuri.chincholkar@webshar.org    |          11         |          8          |                    |
      |   mayuri     | chincholkar |                                    |                     |          5          |        18          |
      |              |             |                                    |          40         |          16         |                    |
      |              |             |  mayuri.chincholkar@webshar.org    |                     |                     |        10          |
      |   mayuri     | chincholkar |                                    |                     |                     |         3          |

  Scenario: Verify functionality for Contact_Us_For_More_Tests settings page with all fields filled correctly with unchecked checkbox
    When I am on Contact_Us_For_More_Tests settings page
    And I keep first name as "mayuri"
    And I keep last name as "chincholkar"
    And I keep email as "mayuri.chincholkar@webshar.org"
    And I keep Number of Employees as "20"
    And I keep Number of Locations as "8"
    And I keep Number Tests Needs as "15"
    Then I remain on the same page
    And I click on submit button
    And I close driver instance

  Scenario: Verify functionality for Contact_Us_For_More_Tests settings page with all fields filled correctly with checked checkbox
    When I am on Contact_Us_For_More_Tests settings page
    And I keep first name as "mayuri"
    And I keep last name as "chincholkar"
    And I keep email as "mayuri.chincholkar@webshar.org"
    And I keep Number of Employees as "20"
    And I keep Number of Locations as "8"
    And I keep Number Tests Needs as "15"
    Then I remain on the same page
    And I should see dialog box with message 'Thank you for contacting us! We will be in touch shortly!'
    And I click on submit button
    And I close driver instance
