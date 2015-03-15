Given(/I am on the Philly Tech Week website/) do
  visit(HomePage)
end

When(/I search for "([^"]*)"/) do |search_term|
  on(HomePage).search_for(search_term)
end

When(/I start searching for "([^"]*)"/) do |search_term|
  on(HomePage).search_bar.set(search_term)
end

Then(/I should see results pertaining to "([^"]*)"/) do |search_term|
  on(SearchResultsPage).result_links.each do |link|
    @browser.goto(link)
    expect(@browser.text.downcase).to include search_term.downcase
  end
end

Then(/^I should see the quick results menu$/) do
  expect(on(HomePage).quick_results.when_present(3)).to exist
end
