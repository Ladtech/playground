Feature: Login
  Users must be logged in to see their billing statement.

  Scenario: logging in
    Given I am on the login page
    When I login with the correct credentials
    Then I should be on the 'Bill' page

  Scenario: failed logins
    Given I am on the login page
    When I login with incorrect credentials
    Then I should be on the 'Login' page