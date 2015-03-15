class HomePage
  include LitePage

  page_url(TestConfig.base_url)

  text_field(:search_bar, :id => 'nav-search')
  ul(:quick_results, :class => 'search-results')

  def search_for(search_term)
    self.search_bar.set(search_term)
    @browser.send_keys(:enter)
  end
end
