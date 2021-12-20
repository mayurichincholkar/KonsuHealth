Feature: konsuHealth Register Page in settings
  Background: Visit the home page
    Given I launch chrome browser
    When I visit home page
    Then I verify that KonsuHealth logo is present on pge
    And I click on Register button
    And I redirected to the covid-19-test-registration page

  Scenario: Verify functionality for At Home Saliva PCR Test settings page for Register Test
    When I am on covid-19-test-registration page
    And I click on Register Test for At Home Saliva PCR Test
    Then I should redirected to the register page
    And I should see the registration form
    And I close driver instance

  Scenario: Verify functionality for Antigen Test settings page for Register Test
    When I am on covid-19-test-registration page
    And I click on Register Test for Antigen Test
    Then I should redirected to the antigen page
    And I should see the registration form
    And I close driver instance

  Scenario: Verify functionality for On-site Nasal PCR Test settings page for Register Test
    When I am on covid-19-test-registration page
    And I click on Register Test for On-site Nasal PCR Test
    Then I should redirected to the onsite page
    And I should see the registration form
    And I close driver instance
