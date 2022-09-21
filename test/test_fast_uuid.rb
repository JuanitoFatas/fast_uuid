# frozen_string_literal: true

require "test_helper"

class TestFastUUID < Minitest::Test
  UUID = ::FastUUID

  def test_that_it_has_a_version_number
    refute_nil UUID::VERSION
  end

  def test_v4
    uuid = UUID.v4
    assert UUID.match?(uuid)
  end
end
