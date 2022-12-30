require "application_system_test_case"

class XabardorsTest < ApplicationSystemTestCase
  setup do
    @xabardor = xabardors(:one)
  end

  test "visiting the index" do
    visit xabardors_url
    assert_selector "h1", text: "Xabardors"
  end

  test "should create xabardor" do
    visit xabardors_url
    click_on "New xabardor"

    fill_in "Ism", with: @xabardor.ism
    fill_in "Xabar", with: @xabardor.xabar_id
    click_on "Create Xabardor"

    assert_text "Xabardor was successfully created"
    click_on "Back"
  end

  test "should update Xabardor" do
    visit xabardor_url(@xabardor)
    click_on "Edit this xabardor", match: :first

    fill_in "Ism", with: @xabardor.ism
    fill_in "Xabar", with: @xabardor.xabar_id
    click_on "Update Xabardor"

    assert_text "Xabardor was successfully updated"
    click_on "Back"
  end

  test "should destroy Xabardor" do
    visit xabardor_url(@xabardor)
    click_on "Destroy this xabardor", match: :first

    assert_text "Xabardor was successfully destroyed"
  end
end
