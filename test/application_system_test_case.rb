require "test_helper"
require 'minispec/rails/system_test'

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  driven_by :rack_test, using: :chrome, screen_size: [1400, 1400]
end
