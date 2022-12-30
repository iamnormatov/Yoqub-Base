require "test_helper"

class VazifasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @vazifa = vazifas(:one)
  end

  test "should get index" do
    get vazifas_url
    assert_response :success
  end

  test "should get new" do
    get new_vazifa_url
    assert_response :success
  end

  test "should create vazifa" do
    assert_difference("Vazifa.count") do
      post vazifas_url, params: { vazifa: { ism: @vazifa.ism, project_id: @vazifa.project_id } }
    end

    assert_redirected_to vazifa_url(Vazifa.last)
  end

  test "should show vazifa" do
    get vazifa_url(@vazifa)
    assert_response :success
  end

  test "should get edit" do
    get edit_vazifa_url(@vazifa)
    assert_response :success
  end

  test "should update vazifa" do
    patch vazifa_url(@vazifa), params: { vazifa: { ism: @vazifa.ism, project_id: @vazifa.project_id } }
    assert_redirected_to vazifa_url(@vazifa)
  end

  test "should destroy vazifa" do
    assert_difference("Vazifa.count", -1) do
      delete vazifa_url(@vazifa)
    end

    assert_redirected_to vazifas_url
  end
end
