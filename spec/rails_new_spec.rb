require "minitest/autorun"
require "minitest/spec"
require "capybara/webkit"

include Capybara::DSL
Capybara.default_driver = :webkit

describe "My Rails App" do
  it "shows the welcome page" do
    visit "http://localhost:3000"
    page.text.must_include "Welcome aboard"
  end
end
