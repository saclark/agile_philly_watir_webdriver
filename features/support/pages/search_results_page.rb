class SearchResultsPage
  include LitePage

  page_url("#{TestConfig.base_url}/search")

  def_elements(:@browser, {
    :results_section => [:div, :class => 'full-search-results']
  })

  def result_links
    self.results_section.links.map do |link|
      link.attribute_value('href')
    end
  end
end
