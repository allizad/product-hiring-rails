require "test_helper"

class CommentsControllerTest < ActionDispatch::IntegrationTest
  test "index is a success" do
    get user_comments_url
    assert_response :success
  end

  test "index sets user comments if there are params" do
    get user_comments_url, params: {
      username: authors(:one).name
    }
    assert_response :success, assigns(:user_comments)
  end
end
