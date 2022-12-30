require "test_helper"

class BiriktirsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @biriktir = biriktirs(:one)
  end

  test "should get index" do
    get biriktirs_url
    assert_response :success
  end

  test "should get new" do
    get new_biriktir_url
    assert_response :success
  end

  test "should create biriktir" do
    assert_difference("Biriktir.count") do
      post biriktirs_url, params: { biriktir: { body: @biriktir.body, project_id: @biriktir.project_id } }
    end

    assert_redirected_to biriktir_url(Biriktir.last)
  end

  test "should show biriktir" do
    get biriktir_url(@biriktir)
    assert_response :success
  end

  test "should get edit" do
    get edit_biriktir_url(@biriktir)
    assert_response :success
  end

  test "should update biriktir" do
    patch biriktir_url(@biriktir), params: { biriktir: { body: @biriktir.body, project_id: @biriktir.project_id } }
    assert_redirected_to biriktir_url(@biriktir)
  end

  test "should destroy biriktir" do
    assert_difference("Biriktir.count", -1) do
      delete biriktir_url(@biriktir)
    end

    assert_redirected_to biriktirs_url
  end
end
