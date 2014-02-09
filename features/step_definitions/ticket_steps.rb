require 'uri'
require File.expand_path(File.join(File.dirname(__FILE__), "..", "support", "paths"))

def create_ticket
  @ticket ||= { customer_email: "example@example.com", customer_name: "changeme", description: "Suck huge problem" }
end

def fill_ticket_form
  visit '/'
  fill_in "ticket_customer_email", with: @ticket[:email]
  fill_in "ticket_customer_name", with: @ticket[:name]
  fill_in "ticket_description", with: @ticket[:description]
  click_button "Submit"
end

Given /^(?:|I )am on (.+)$/ do |page_name|
  visit '/'
end

Then /^(?:|I )should see "([^\"]*)"$/ do |text|
  page.should have_content text
end

When /^I fill ticket form with correct data$/ do
  create_ticket
  fill_ticket_form
end
