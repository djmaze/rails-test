require 'test_helper'

class DbTest < ActiveSupport::TestCase
  test "db works" do
    assert_equal [[1]], ActiveRecord::Base.connection.select_rows('SELECT 1')
  end
end
