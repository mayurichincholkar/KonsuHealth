Feature: konsuHealth MyAccount Page in settings
  Background: Visit the home page
    Given I launch chrome browser
    When I visit home page
    Then I verify that KonsuHealth logo is present on pge
    And I click on MyAccount
    And I redirected to the login page


  Scenario: Verify functionality for login settings page for blank fields
    When I am on login settings page
    And I keep username or email address as ""
    And I keep password as ""
    Then I should see an error message on login page as "Error: Username is required."
    And I click on Log In button
    And I close driver instance

  Scenario: Verify functionality for login settings page for blank username field
    When I am on login settings page
    And I keep username or email address as ""
    And I keep password as "abc@123"
    Then I should see an error message on login page as "Error: Username is required."
    And I click on Log In button
    And I close driver instance

  Scenario: Verify functionality for login settings page for blank password field
    When I am on login settings page
    And I keep username or email address as "mayuri.chincholkar@webshar.org"
    And I keep password as ""
    Then I should see an error message on login page as "Error: The password field is empty."
    And I click on Log In button
    And I close driver instance


  Scenario: Verify functionality for login settings page for wrong username field and actual password
    When I am on login settings page
    And I keep username or email address as "mayurichincholkar@webshar.org"git
    And I keep password as "abc@123"
    Then I should see an error message on login page as "Unknown email address. Check again or try your username."
    And I click on Log In button
    And I close driver instance


  Scenario: Verify functionality for login settings page for actual username field and wrong password
    When I am on login settings page
    And I keep username or email address as "mayuri.chincholkar@webshar.org"
    And I keep password as "abc@12345"
    Then I should see an error message on login page as "Error: The password you entered for the email address mayuri.chincholkar@webshar.org is incorrect. Lost your password?"
    And I click on Log In button
    And I close driver instance

  Scenario: Verify functionality for login settings page for wrong username field and wrong password
    When I am on login settings page
    And I keep username or email address as "mayurichincholkar@webshar.org"
    And I keep password as "abc@12345"
    Then I should see an error message on login page as "Unknown email address. Check again or try your username."
    And I click on Log In button
    And I close driver instance

  Scenario: Verify functionality for login settings page for actual username field and actual password
    When I am on login settings page
    And I keep username or email address as "mayuri.chincholkar@webshar.org"
    And I keep password as "abc@123"
    Then I should redirected to the MyAccount Dashboard page
    And I click on Log In button
    And I close driver instance

  Scenario: Verify functionality for login settings page for lost your password
    When I am on login settings page
    And I click on 'lost your password'
    Then I should redirected to the lost password page
    And I click on Log In button
    And I close driver instance
