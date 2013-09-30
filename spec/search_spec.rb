require "minitest/autorun"
require "minitest/spec"
require "capybara/webkit"

include Capybara::DSL
Capybara.default_driver = :webkit

describe "My search" do
  it "has results" do
    visit "http://google.com"
    fill_in "q", with: "Code Fellows"
    click_on "Google Search"
    page.text.must_include "codefellows.org"
    page.text.must_include "twitter.com/CodeFellowsOrg"
  end
end
