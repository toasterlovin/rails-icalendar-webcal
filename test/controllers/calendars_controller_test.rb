require "test_helper"

class CalendarsControllerTest < ActionDispatch::IntegrationTest
  test "html page links to the webcal feed" do
    get calendar_url
    assert_response :success
    assert_select "a[href=?]", "webcal://www.example.com/calendar.ics"
  end

  test "ics feed renders a calendar with an event" do
    get calendar_url(format: :ics)
    assert_response :success
    assert_equal "text/calendar", response.media_type

    calendar = Icalendar::Calendar.parse(response.body).first
    assert_equal "Awesome Rails Calendar", calendar.x_wr_calname.first.to_s
    assert_equal "PUBLISH", calendar.ip_method
    assert_equal [ "Power Lunch" ], calendar.events.map { |e| e.summary.to_s }
  end
end
