class CalendarsController < ApplicationController
  def show
    respond_to do |format|
      format.html
      format.ics do
        cal = Icalendar::Calendar.new
        cal.x_wr_calname = 'Awesome Rails Calendar'
        cal.event do |e|
          e.dtstart     = DateTime.now + 2.hours
          e.dtend       = DateTime.now + 3.hours
          e.summary     = 'Power Lunch'
          e.description = 'Get together and do big things'
        end
        cal.publish
        render plain: cal.to_ical
      end
    end
  end
end
