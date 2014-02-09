Feature: Create ticket
  In order to get help from staff
  A customer
  Should be able to create ticket

    Scenario: Customer see ticket form on main page
      Given I am on the home page
      Then I should see "Create a new ticket"

    Scenario: Customer sumbit correct ticket
      Given I am on the home page
      When I fill ticket form with correct data
      Then I should see 'Thanks!'
      And I should receive email
