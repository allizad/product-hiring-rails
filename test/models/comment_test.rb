require "test_helper"

class CommentTest < ActiveSupport::TestCase
  setup do
    @comment = comments(:one)
  end

  test "validity" do
    comment = Comment.new(content: "foo", author: authors(:one), post: posts(:one))
    assert comment.valid?
  end

  test "must have an author" do
    @comment.author = nil
    refute @comment.valid?
  end

  test "must have a post" do
    @comment.post = nil
    refute @comment.valid?
  end
end
