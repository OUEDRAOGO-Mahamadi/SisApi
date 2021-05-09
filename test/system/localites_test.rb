require "application_system_test_case"

class LocalitesTest < ApplicationSystemTestCase
  setup do
    @localite = localites(:one)
  end

  test "visiting the index" do
    visit localites_url
    assert_selector "h1", text: "Localites"
  end

  test "creating a Localite" do
    visit localites_url
    click_on "New Localite"

    fill_in "Nom", with: @localite.nom
    fill_in "Type", with: @localite.type
    click_on "Create Localite"

    assert_text "Localite was successfully created"
    click_on "Back"
  end

  test "updating a Localite" do
    visit localites_url
    click_on "Edit", match: :first

    fill_in "Nom", with: @localite.nom
    fill_in "Type", with: @localite.type
    click_on "Update Localite"

    assert_text "Localite was successfully updated"
    click_on "Back"
  end

  test "destroying a Localite" do
    visit localites_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Localite was successfully destroyed"
  end
end
