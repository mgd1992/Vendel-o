require "test_helper"

class UsersControllerTest < ActionDispatch::IntegrationTest
  require "test_helper"
  setup do
    @user = users(:paco)
  end

  test "should get show" do
    get user_url(@user.username)

    assert_response :success
  end
end
