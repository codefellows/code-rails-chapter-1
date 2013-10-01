require "spec_helper"

describe "My search page" do
  it "has results" do
    visit "http://google.com"
    fill_in "q", with: "Code Fellows"
    click_on "Google Search"
    page.text.must_include "codefellows.org"
    page.text.must_include "twitter.com/CodeFellowsOrg"
  end
end
