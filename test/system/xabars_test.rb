require "application_system_test_case"

class XabarsTest < ApplicationSystemTestCase
  setup do
    @xabar = xabars(:one)
  end

  test "visiting the index" do
    visit xabars_url
    assert_selector "h1", text: "Xabars"
  end

  test "should create xabar" do
    visit xabars_url
    click_on "New xabar"

    fill_in "Ism", with: @xabar.ism
    fill_in "Project", with: @xabar.project_id
    fill_in "Tavsiv", with: @xabar.tavsiv
    click_on "Create Xabar"

    assert_text "Xabar was successfully created"
    click_on "Back"
  end

  test "should update Xabar" do
    visit xabar_url(@xabar)
    click_on "Edit this xabar", match: :first

    fill_in "Ism", with: @xabar.ism
    fill_in "Project", with: @xabar.project_id
    fill_in "Tavsiv", with: @xabar.tavsiv
    click_on "Update Xabar"

    assert_text "Xabar was successfully updated"
    click_on "Back"
  end

  test "should destroy Xabar" do
    visit xabar_url(@xabar)
    click_on "Destroy this xabar", match: :first

    assert_text "Xabar was successfully destroyed"
  end
end
