require "application_system_test_case"

class FormatsTest < ApplicationSystemTestCase
  setup do
    @format = formats(:one)
  end

  test "visiting the index" do
    visit formats_url
    assert_selector "h1", text: "Formats"
  end

  test "creating a Format" do
    visit formats_url
    click_on "New Format"

    fill_in "Code", with: @format.code
    fill_in "Libelle", with: @format.libelle
    click_on "Create Format"

    assert_text "Format was successfully created"
    click_on "Back"
  end

  test "updating a Format" do
    visit formats_url
    click_on "Edit", match: :first

    fill_in "Code", with: @format.code
    fill_in "Libelle", with: @format.libelle
    click_on "Update Format"

    assert_text "Format was successfully updated"
    click_on "Back"
  end

  test "destroying a Format" do
    visit formats_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Format was successfully destroyed"
  end
end
