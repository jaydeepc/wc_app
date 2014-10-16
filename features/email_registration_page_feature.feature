Feature: As Peter
  I want to find the recommendation tool landing page
  So that I can get more information about my perfect grill

  @landing_page @regression
  Scenario: User can submit a valid email address to Sign Up
    Given he is in the home page
    When he enters email address in email field
    And clicks on submit email
    Then the email is submitted to the app