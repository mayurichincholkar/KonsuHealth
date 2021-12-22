Feature: konsuHealth COVID-19 Test Page in settings
  Background: Visit the home page
    Given I launch chrome browser
    When I visit home page
    Then I verify that KonsuHealth logo is present on pge
    And I click on COVID-19 Test
    And I redirected to the COVID-19 Test page

  Scenario: Verify functionality for COVID-19 Test settings page 'Purchase now' button for At Home Saliva PCR Test
    When I am on COVID-19 Test settings page
    And I click on Purchase now button
    Then I should redirected to the pcr page
    And I should see title 'At-Home COVID-19 PCR Test'
    And I close driver instance

  Scenario: Verify functionality for COVID-19 Test settings page 'Register Test' button for At Home Saliva PCR Testgit
    When I am on COVID-19 Test settings page
    And I click on Register Test button
    Then I should redirected to the test registration page
    And I should see title 'Registration'
    And I close driver instance

  Scenario: Verify functionality for COVID-19 Test settings page 'Contact For Information' button for Antigen Test
    When I am on COVID-19 Test settings page
    And I click on Contact For Information button
    Then I should redirected to the contact page
    And I should see title 'Contact'
    And I close driver instance

  Scenario: Verify functionality for COVID-19 Test settings page 'Register Test' button for Antigen Test
    When I am on COVID-19 Test settings page
    And I click on Register Test button
    Then I should redirected to the test registration page
    And I should see title 'Antigen'
    And I close driver instance

  Scenario: Verify functionality for COVID-19 Test settings page 'Contact For Information' button for On-site Nasal PCR Test
    When I am on COVID-19 Test settings page
    And I click on Contact For Information button
    Then I should redirected to the contact page
    And I should see title 'Contact'
    And I close driver instance

  Scenario: Verify functionality for COVID-19 Test settings page 'Register Test' button for On-site Nasal PCR Test
    When I am on COVID-19 Test settings page
    And I click on Register Test button
    Then I should redirected to the test registration page
    And I should see title 'Onsite Nasal PCR Test'
    And I close driver instance

