require "test_helper"

class XabarsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @xabar = xabars(:one)
  end

  test "should get index" do
    get xabars_url
    assert_response :success
  end

  test "should get new" do
    get new_xabar_url
    assert_response :success
  end

  test "should create xabar" do
    assert_difference("Xabar.count") do
      post xabars_url, params: { xabar: { ism: @xabar.ism, project_id: @xabar.project_id, tavsiv: @xabar.tavsiv } }
    end

    assert_redirected_to xabar_url(Xabar.last)
  end

  test "should show xabar" do
    get xabar_url(@xabar)
    assert_response :success
  end

  test "should get edit" do
    get edit_xabar_url(@xabar)
    assert_response :success
  end

  test "should update xabar" do
    patch xabar_url(@xabar), params: { xabar: { ism: @xabar.ism, project_id: @xabar.project_id, tavsiv: @xabar.tavsiv } }
    assert_redirected_to xabar_url(@xabar)
  end

  test "should destroy xabar" do
    assert_difference("Xabar.count", -1) do
      delete xabar_url(@xabar)
    end

    assert_redirected_to xabars_url
  end
end
