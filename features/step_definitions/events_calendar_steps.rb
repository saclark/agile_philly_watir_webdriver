Given(/I am viewing the Philly Tech Week calendar of events/) do
  visit(EventsCalendarPage)
end

When(/I filter events for "([^"]*)" track events/) do |track_name|
  on(EventsCalendarPage).select_track(track_name)
end

Then(/I should see events pertaining to the "([^"]*)" track/) do |track_name|
  on(EventsCalendarPage).event_listings.each do |event_listing|
    if event_listing.visible?
      expect(event_listing.link(:text => "#{track_name} Track")).to exist
    end
  end
end
