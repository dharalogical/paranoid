require "application_system_test_case"

class ParanoiacsTest < ApplicationSystemTestCase
  setup do
    @paranoiac = paranoiacs(:one)
  end

  test "visiting the index" do
    visit paranoiacs_url
    assert_selector "h1", text: "Paranoiacs"
  end

  test "should create paranoiac" do
    visit paranoiacs_url
    click_on "New paranoiac"

    fill_in "Firstname", with: @paranoiac.firstname
    fill_in "Lastname", with: @paranoiac.lastname
    click_on "Create Paranoiac"

    assert_text "Paranoiac was successfully created"
    click_on "Back"
  end

  test "should update Paranoiac" do
    visit paranoiac_url(@paranoiac)
    click_on "Edit this paranoiac", match: :first

    fill_in "Firstname", with: @paranoiac.firstname
    fill_in "Lastname", with: @paranoiac.lastname
    click_on "Update Paranoiac"

    assert_text "Paranoiac was successfully updated"
    click_on "Back"
  end

  test "should destroy Paranoiac" do
    visit paranoiac_url(@paranoiac)
    click_on "Destroy this paranoiac", match: :first

    assert_text "Paranoiac was successfully destroyed"
  end
end
