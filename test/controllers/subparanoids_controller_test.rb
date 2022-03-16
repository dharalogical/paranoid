require "test_helper"

class SubparanoidsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get subparanoids_index_url
    assert_response :success
  end
end
