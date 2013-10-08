require "minitest/autorun"
require "minitest/spec"

require "welcome"

describe Welcome do
  it "has a message" do
    Welcome.new.message.must_match "Welcome Peeps!"
  end
end
