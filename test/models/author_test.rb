require "test_helper"

class AuthorTest < ActiveSupport::TestCase
  test "validity" do
    author = Author.new
    assert author.valid?
  end
end
