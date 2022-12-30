require "application_system_test_case"

class VazifasTest < ApplicationSystemTestCase
  setup do
    @vazifa = vazifas(:one)
  end

  test "visiting the index" do
    visit vazifas_url
    assert_selector "h1", text: "Vazifas"
  end

  test "should create vazifa" do
    visit vazifas_url
    click_on "New vazifa"

    fill_in "Ism", with: @vazifa.ism
    fill_in "Project", with: @vazifa.project_id
    click_on "Create Vazifa"

    assert_text "Vazifa was successfully created"
    click_on "Back"
  end

  test "should update Vazifa" do
    visit vazifa_url(@vazifa)
    click_on "Edit this vazifa", match: :first

    fill_in "Ism", with: @vazifa.ism
    fill_in "Project", with: @vazifa.project_id
    click_on "Update Vazifa"

    assert_text "Vazifa was successfully updated"
    click_on "Back"
  end

  test "should destroy Vazifa" do
    visit vazifa_url(@vazifa)
    click_on "Destroy this vazifa", match: :first

    assert_text "Vazifa was successfully destroyed"
  end
end
