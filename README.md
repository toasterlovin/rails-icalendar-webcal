# rails-icalendar-webcal
Example Rails app implementing a webcal calendar with the icalendar gem

What you need to know:

- Must use URL helpers, not path helpers
- `protocol` must be `webcal`
- `format` must be `ics`
- `render plain` in controller
- `cal.x_wr_calname` to set default calendar name
