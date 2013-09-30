require "minitest/autorun"
require "minitest/spec"

require "welcome"

describe Welcome do
  it "has a message" do
    hello = Welcome.new
    hello.message.must_match "Welcome"
  end
end
