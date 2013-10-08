require "spec_helper"

describe "A local web page" do
  it "has a welcome headline" do
    visit "http://localhost:4000/"
    page.text.must_include "Welcome aboard"
  end
end
