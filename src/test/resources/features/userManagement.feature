@login @regression
Feature: Crater app user management
  Users with permissions should be able to interact with the application on successful login

  @validlogin @loginTests @smokeTest
  Scenario: Successful login
    Given As a user, I am on the login page
    When I enter valid username and valid password
    And I click on login button
    Then I should be on the user profile page

  @invalidlogin @loginTests
  Scenario: Invalid username login
    Given As a user I am on the login page
    When I enter invalid username and invalid password
    And I click on login button
    Then I should see an error message
    And I should not be logged in