Feature: Sign up
  In order to get access to protected sections of the site
  As a staff
  I want to be able to sign up

    Background:
      Given I am not logged in

    Scenario: Staff signs up with valid data
      When I sign up with valid staff data
      Then I should see a successful sign up message

    Scenario: Staff signs up with invalid email
      When I sign up with an invalid email
      Then I should see an invalid email message

    Scenario: Staff signs up without password
      When I sign up without a password
      Then I should see a missing password message

    Scenario: Staff signs up without password confirmation
      When I sign up without a password confirmation
      Then I should see a missing password confirmation message
