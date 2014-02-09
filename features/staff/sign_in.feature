Feature: Sign in
  In order to get access to protected sections of the site
  A staff
  Should be able to sign in

    Scenario: Staff is not signed up
      Given I do not exist as a staff
      When I sign in with valid credentials
      Then I see an invalid login message
        And I should be signed out

    Scenario: Staff signs in successfully
      Given I exist as a staff
        And I am not logged in
      When I sign in with valid credentials
      Then I see a successful sign in message
      When I return to the site
      Then I should be signed in

    Scenario: Staff enters wrong email
      Given I exist as a staff
      And I am not logged in
      When I sign in with a wrong email
      Then I see an invalid login message
      And I should be signed out

    Scenario: Staff enters wrong password
      Given I exist as a staff
      And I am not logged in
      When I sign in with a wrong password
      Then I see an invalid login message
      And I should be signed out
