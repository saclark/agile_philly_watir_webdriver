class HomePage
  include LitePage

  page_url(TestConfig.base_url)

  def_elements(:@browser, {
    :search_bar => [:text_field, :id => 'nav-search'],
    :quick_results => [:ul, :class => 'search-results']
  })

  def search_for(search_term)
    self.search_bar.set(search_term)
    @browser.send_keys(:enter)
  end
end
