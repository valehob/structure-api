require "test_helper"

class DrillsControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get drills_show_url
    assert_response :success
  end

  test "should get index" do
    get drills_index_url
    assert_response :success
  end
end
