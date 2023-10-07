# frozen_string_literal: true

require "test_helper"

class MdiTest < ActiveSupport::TestCase
  test "it has a version number" do
    assert Mdi::VERSION
  end

  test "it has a MDI version number" do
    assert Mdi::MDI_VERSION
  end
end
