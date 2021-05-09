require "application_system_test_case"

class RessourceLocalitesTest < ApplicationSystemTestCase
  setup do
    @ressource_localite = ressource_localites(:one)
  end

  test "visiting the index" do
    visit ressource_localites_url
    assert_selector "h1", text: "Ressource Localites"
  end

  test "creating a Ressource localite" do
    visit ressource_localites_url
    click_on "New Ressource Localite"

    fill_in "Ressource", with: @ressource_localite.ressource_id
    fill_in "Sous localite", with: @ressource_localite.sous_localite_id
    click_on "Create Ressource localite"

    assert_text "Ressource localite was successfully created"
    click_on "Back"
  end

  test "updating a Ressource localite" do
    visit ressource_localites_url
    click_on "Edit", match: :first

    fill_in "Ressource", with: @ressource_localite.ressource_id
    fill_in "Sous localite", with: @ressource_localite.sous_localite_id
    click_on "Update Ressource localite"

    assert_text "Ressource localite was successfully updated"
    click_on "Back"
  end

  test "destroying a Ressource localite" do
    visit ressource_localites_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ressource localite was successfully destroyed"
  end
end
