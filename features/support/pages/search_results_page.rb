class SearchResultsPage
  include LitePage

  page_url("#{TestConfig.base_url}/search")

  div(:results_section, :class => 'full-search-results')

  def result_links
    self.results_section.links.map do |link|
      link.attribute_value('href')
    end
  end
end
