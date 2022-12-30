require "test_helper"

class XabardorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @xabardor = xabardors(:one)
  end

  test "should get index" do
    get xabardors_url
    assert_response :success
  end

  test "should get new" do
    get new_xabardor_url
    assert_response :success
  end

  test "should create xabardor" do
    assert_difference("Xabardor.count") do
      post xabardors_url, params: { xabardor: { ism: @xabardor.ism, xabar_id: @xabardor.xabar_id } }
    end

    assert_redirected_to xabardor_url(Xabardor.last)
  end

  test "should show xabardor" do
    get xabardor_url(@xabardor)
    assert_response :success
  end

  test "should get edit" do
    get edit_xabardor_url(@xabardor)
    assert_response :success
  end

  test "should update xabardor" do
    patch xabardor_url(@xabardor), params: { xabardor: { ism: @xabardor.ism, xabar_id: @xabardor.xabar_id } }
    assert_redirected_to xabardor_url(@xabardor)
  end

  test "should destroy xabardor" do
    assert_difference("Xabardor.count", -1) do
      delete xabardor_url(@xabardor)
    end

    assert_redirected_to xabardors_url
  end
end
