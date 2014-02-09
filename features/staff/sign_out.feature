Feature: Sign out
  To protect from unauthorized access
  A signed in staff
  Should be able to sign out

    Scenario: Staff signs out
      Given I am logged in
      When I sign out
      Then I should see a signed out message
      When I return to the site
      Then I should be signed out
