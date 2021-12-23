Feature: KonsuHealth Purchase_now page in settings
  Background: Visit the home page
    Given I launch chrome browser
    When I visit home page
    And I click on COVID-19 Tests
    And I redirected to the COVID-19 Tests page
    And I click on Register Test button for At Home Saliva PCR Test
    Then I redirected to register page
    And I verify that 'Registration' title is present on page

  Scenario: Verify functionality for Register_Test_Saliva now settings page for Click here to login button
    When I am on Register_Test_Saliva settings page
    And I click on Click here to login button
    Then I should see to login form
    And I verify that 'If you have tested with us before, please enter your details below.' message is present on page
    And I close driver instance

  Scenario: Verify functionality for Register_Test_Saliva now settings for all blank fields
    When I am on Register_Test_Saliva settings page
    And I keep first name as ""
    And I keep last name as ""
    And I keep birth date as ""
    And I keep email as ""
    And I keep phone number as ""
    And I keep address as ""
    And I keep city as ""
    And I keep state as ""
    And I keep zip code as ""
    And I keep biological sex as "female"
    And I keep ethnicity as ""
    And I keep product barcode as ""
    And I keep collection time as ""
    And I keep Have you previously been infected with SARS or MERS? as "no"
    And I keep Current Symptoms as "no symptom"
    And I keep Date of first symptom onset as ""
    And I keep Pre-existing conditions as ""
    And I keep Please provide further information regarding pre-existing conditions and list and health conditions not mentioned as ""
    And I kepp Please list any current medications. This information may impact results as ""
    And I keep Opt Out Of Research unchecked
    And I keep New York State Residents Only: Check this box if you are a New York state resident and give permission for Phosphorus to retain any remaining sample for longer than 60 days after the completion of testing unchecked
    And I keep I authorize the release of my COVID-19 test results to Konsu Health, its partners, and myself transmitted physically or electronically. I also understand that results may be shared with local, state, and federal regulatory agencies as required. unchecked
    And I keep Patient Signature as ""
    And I keep Date as ""
    And I keep Same as Participant Information unchecked
    And I keep First name as "" for Account Details
    And I keep Last name as "" for Account Details
    And I keep Street address as "" for Account Details
    And I keep Town / City as "" for Account Details
    And I keep State as "" for Account Details
    And I keep ZIP as "" for Account Details
    And I keep Phone as "" for Account Details
    And I keep Email address as "" for Account Details
    And I keep Create account password as "" for Account Details
    And I keep  I've read and accept the HIPAA Authorization unchecked
    And I keep I have read and agree to the website terms and conditions unchecked
    And I click on Place Order button
    Then I should see error message as 'Please acknowledge the HIPAA Authorization Please check at least one symptom to continue checkout.Please enter in all participant information.Patient signature required for test authorizationBilling First name is a required field.Billing Last name is a required field.Billing Street address is a required field.Billing Town / City is a required field.Billing ZIP is a required field.Billing Phone is a required field.Billing Email address is a required field.Create account password is a required field.Please read and accept the terms and conditions to proceed with your order.'

