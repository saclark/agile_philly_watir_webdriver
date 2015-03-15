Feature: Events Calendar
  In order to find event times and details
  As a user interested in attending Philly Tech Week
  I want to be able to view a filterable calendar of events

  Scenario: View events for a particular track
    Given I am viewing the Philly Tech Week calendar of events
    When I filter events for "Dev" track events
    Then I should see events pertaining to the "Dev" track
