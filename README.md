# Webcal links in Rails with the icalendar gem

This is a demo Ruby on Rails app that implements a webcal calendar link using
the `icalendar` gem. See the [accompanying blog post] for more details. Or,
[see the app in action].

[accompanying blog post]: http://www.toasterlovin.com/rails-webcal-links-with-icalendar-gem/
[see the app in action]: https://rails-icalendar-webcal.toasterlovin.com/calendar

## Running locally

Requires Ruby 3.4 (see `.ruby-version`).

```sh
bin/setup      # installs gems, prepares the database, and starts the server
bin/rails test # runs the test suite
```

Then visit http://localhost:3000 and click "subscribe".

