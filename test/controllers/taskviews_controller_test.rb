require "test_helper"

class TaskviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get taskviews_index_url
    assert_response :success
  end
end
