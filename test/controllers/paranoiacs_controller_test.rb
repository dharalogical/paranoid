require "test_helper"

class ParanoiacsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @paranoiac = paranoiacs(:one)
  end

  test "should get index" do
    get paranoiacs_url
    assert_response :success
  end

  test "should get new" do
    get new_paranoiac_url
    assert_response :success
  end

  test "should create paranoiac" do
    assert_difference("Paranoiac.count") do
      post paranoiacs_url, params: { paranoiac: { firstname: @paranoiac.firstname, lastname: @paranoiac.lastname } }
    end

    assert_redirected_to paranoiac_url(Paranoiac.last)
  end

  test "should show paranoiac" do
    get paranoiac_url(@paranoiac)
    assert_response :success
  end

  test "should get edit" do
    get edit_paranoiac_url(@paranoiac)
    assert_response :success
  end

  test "should update paranoiac" do
    patch paranoiac_url(@paranoiac), params: { paranoiac: { firstname: @paranoiac.firstname, lastname: @paranoiac.lastname } }
    assert_redirected_to paranoiac_url(@paranoiac)
  end

  test "should destroy paranoiac" do
    assert_difference("Paranoiac.count", -1) do
      delete paranoiac_url(@paranoiac)
    end

    assert_redirected_to paranoiacs_url
  end
end
