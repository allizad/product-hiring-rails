require "test_helper"

class PeopleControllerTest < ActionDispatch::IntegrationTest
  test "index" do
    get root_url
    assert assert_response :success, assigns(:people)
  end
end
