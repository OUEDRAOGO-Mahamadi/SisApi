require "application_system_test_case"

class SpecialitesTest < ApplicationSystemTestCase
  setup do
    @specialite = specialites(:one)
  end

  test "visiting the index" do
    visit specialites_url
    assert_selector "h1", text: "Specialites"
  end

  test "creating a Specialite" do
    visit specialites_url
    click_on "New Specialite"

    fill_in "Code", with: @specialite.code
    fill_in "Designation", with: @specialite.designation
    click_on "Create Specialite"

    assert_text "Specialite was successfully created"
    click_on "Back"
  end

  test "updating a Specialite" do
    visit specialites_url
    click_on "Edit", match: :first

    fill_in "Code", with: @specialite.code
    fill_in "Designation", with: @specialite.designation
    click_on "Update Specialite"

    assert_text "Specialite was successfully updated"
    click_on "Back"
  end

  test "destroying a Specialite" do
    visit specialites_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Specialite was successfully destroyed"
  end
end
