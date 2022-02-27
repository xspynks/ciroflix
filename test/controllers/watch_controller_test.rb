require "test_helper"

class WatchControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get watch_index_url
    assert_response :success
  end
end
