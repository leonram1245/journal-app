require "test_helper"

class PresenttasksControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get presenttasks_index_url
    assert_response :success
  end
end
