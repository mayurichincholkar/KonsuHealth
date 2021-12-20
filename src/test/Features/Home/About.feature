Feature: KonsuHealth About page in settings
  Background: Visit the home page
    Given I launch chrome browser
    When I visit home page
    Then I verify that KonsuHealth logo is present on pge
    And I click on About
    And I redirected to the About page

