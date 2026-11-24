source "https://rubygems.org"

# Only the parts of Rails this app uses, all on one version. Dependabot
# updates them together (see .github/dependabot.yml).
rails_version = "~> 8.1.4"
gem "railties", rails_version
gem "actionpack", rails_version
gem "actionview", rails_version
gem "propshaft"
gem "puma", ">= 5.0"
gem "icalendar", "~> 2.14"

group :development, :test do
  gem "bundler-audit", require: false
end
