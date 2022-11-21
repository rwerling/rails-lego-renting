require "test_helper"

class LegosControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get legos_new_url
    assert_response :success
  end
end
