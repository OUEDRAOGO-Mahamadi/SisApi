require "application_system_test_case"

class SousLocalitesTest < ApplicationSystemTestCase
  setup do
    @sous_localite = sous_localites(:one)
  end

  test "visiting the index" do
    visit sous_localites_url
    assert_selector "h1", text: "Sous Localites"
  end

  test "creating a Sous localite" do
    visit sous_localites_url
    click_on "New Sous Localite"

    fill_in "Nom", with: @sous_localite.nom
    fill_in "Type", with: @sous_localite.type
    click_on "Create Sous localite"

    assert_text "Sous localite was successfully created"
    click_on "Back"
  end

  test "updating a Sous localite" do
    visit sous_localites_url
    click_on "Edit", match: :first

    fill_in "Nom", with: @sous_localite.nom
    fill_in "Type", with: @sous_localite.type
    click_on "Update Sous localite"

    assert_text "Sous localite was successfully updated"
    click_on "Back"
  end

  test "destroying a Sous localite" do
    visit sous_localites_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sous localite was successfully destroyed"
  end
end
