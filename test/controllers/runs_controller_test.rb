require "test_helper"

class RunsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get runs_create_url
    assert_response :success
  end
end
