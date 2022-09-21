# frozen_string_literal: true

require "test_helper"

class TestFastUUID < Minitest::Test
  UUID = ::FastUUID
  UUID_REGEXP = /\A[0-9a-f]{8}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{4}-[0-9a-f]{12}\Z/o

  def test_that_it_has_a_version_number
    refute_nil UUID::VERSION
  end

  def test_v4
    result = UUID.v4
    assert result.match?(UUID_REGEXP)
  end
end
