class CalendarsController < ApplicationController
  def show
    respond_to do |format|
      format.html
      format.ics do
        cal = Icalendar::Calendar.new
        cal.x_wr_calname = "Awesome Rails Calendar"
        cal.event do |e|
          e.uid         = "power-lunch@#{request.host}"
          e.dtstart     = Icalendar::Values::DateTime.new(2.hours.from_now.utc, tzid: "UTC")
          e.dtend       = Icalendar::Values::DateTime.new(3.hours.from_now.utc, tzid: "UTC")
          e.summary     = "Power Lunch"
          e.description = "Get together and do big things"
        end
        cal.publish
        render plain: cal.to_ical, content_type: "text/calendar"
      end
    end
  end
end
