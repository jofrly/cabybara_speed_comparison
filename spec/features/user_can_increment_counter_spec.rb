require "rails_helper"

RSpec.feature "User can increment counter" do
  # ~ 0.15s
  xscenario "without javascript" do
    visit root_path

    click_on "Increment"
    click_on "Increment"

    expect(page).to have_css ".counter", text: "2 incremented with ruby"
  end

  # ~1.6s
  scenario "with javascript", js: true do
    visit root_path

    click_on "Increment"
    click_on "Increment"

    expect(page).to have_css ".counter", text: "2 incremented with js"
  end

  # => rack_test are ~ 10 times faster than js enabled selenium_chrome_headless tests
end
