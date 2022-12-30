require "application_system_test_case"

class BiriktirsTest < ApplicationSystemTestCase
  setup do
    @biriktir = biriktirs(:one)
  end

  test "visiting the index" do
    visit biriktirs_url
    assert_selector "h1", text: "Biriktirs"
  end

  test "should create biriktir" do
    visit biriktirs_url
    click_on "New biriktir"

    fill_in "Body", with: @biriktir.body
    fill_in "Project", with: @biriktir.project_id
    click_on "Create Biriktir"

    assert_text "Biriktir was successfully created"
    click_on "Back"
  end

  test "should update Biriktir" do
    visit biriktir_url(@biriktir)
    click_on "Edit this biriktir", match: :first

    fill_in "Body", with: @biriktir.body
    fill_in "Project", with: @biriktir.project_id
    click_on "Update Biriktir"

    assert_text "Biriktir was successfully updated"
    click_on "Back"
  end

  test "should destroy Biriktir" do
    visit biriktir_url(@biriktir)
    click_on "Destroy this biriktir", match: :first

    assert_text "Biriktir was successfully destroyed"
  end
end
