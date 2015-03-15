class EventsCalendarPage
  include LitePage

  page_url("#{TestConfig.base_url}/events#view=block")

  articles(:event_listings, :class => 'event-listing')

  def select_track(track_name)
    @browser.button(:class => 'filter', :text => track_name).click
  end
end
