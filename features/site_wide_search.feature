Feature: Site Wide Search
  In order to quickly find items of interest
  As a user interested in all things Philly Tech Week
  I want to be able to search the site

  @xbrowser
  Scenario: Search bar dropdown
    Given I am on the Philly Tech Week website
    When I start searching for "beer"
    Then I should see the quick results menu

  Scenario Outline: Site wide search
    Given I am on the Philly Tech Week website
    When I search for "<search_term>"
    Then I should see results pertaining to "<search_term>"

    Examples:
      | search_term |
      | angular     |
      | testing     |
