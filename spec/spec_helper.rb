require "minitest/autorun"
require "minitest/spec"

class FeatureSpec < MiniTest::Spec
  require "capybara/webkit"
  include Capybara::DSL
  Capybara.default_driver = :webkit
  register_spec_type(/page$/, self)
end
