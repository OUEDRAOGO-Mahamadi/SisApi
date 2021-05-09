require "application_system_test_case"

class PjointesTest < ApplicationSystemTestCase
  setup do
    @pjointe = pjointes(:one)
  end

  test "visiting the index" do
    visit pjointes_url
    assert_selector "h1", text: "Pjointes"
  end

  test "creating a Pjointe" do
    visit pjointes_url
    click_on "New Pjointe"

    fill_in "File", with: @pjointe.file
    click_on "Create Pjointe"

    assert_text "Pjointe was successfully created"
    click_on "Back"
  end

  test "updating a Pjointe" do
    visit pjointes_url
    click_on "Edit", match: :first

    fill_in "File", with: @pjointe.file
    click_on "Update Pjointe"

    assert_text "Pjointe was successfully updated"
    click_on "Back"
  end

  test "destroying a Pjointe" do
    visit pjointes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pjointe was successfully destroyed"
  end
end
