Feature: KonsuHealth About page in settings
  Background: Visit the home page
    Given I launch chrome browser
    When I visit home page
    Then I verify that KonsuHealth logo is present on pge
    And I click on COVID-19 Testing Options button
    And I should redirected to the COVID-19 Tests page
    And I should see the title 'COVID-19 Tests'