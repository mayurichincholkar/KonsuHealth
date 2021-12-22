Feature: KonsuHealth Purchase_now page in settings
  Background: Visit the home page
    Given I launch chrome browser
    When I visit home page
    And I click on COVID-19 Tests
    Then I redirected to the COVID-19 Tests page
    And I verify that 'COVID-19 Tests' title is present on pge

  Scenario: Verify functionality for Purchase now settings page for checkout button
    When I am on Purchase now settings page
    And I keep Purchase now dropdown as "1Test - $135"
    And I click on checkout button
    Then I should redirected to Cart page
    And I verify that 'Cart' title is present on page
    And I close driver instance

  Scenario: Verify functionality for 'For orders over 6 or if you need to return your tests in multiple batches please contact us here.' link
    When I am on Purchase now settings page
    And I click on 'For orders over 6 or if you need to return your tests in multiple batches please contact us here.' link
    Then I should see 'Contact Us For More Tests' form on the screen
    And I close driver instance

  Scenario: Verify functionality for 'Unsure about how saliva tests compare to nasopharyngeal swabs? Read more here.' link
    When I am on Purchase now settings page
    And I click on here  from 'Unsure about how saliva tests compare to nasopharyngeal swabs? Read more here.'
    Then I should redirected to Saliva or Nasopharyngeal Swab Specimens for Detection of SARS-CoV-2 page
    And I close driver instance
