require "application_system_test_case"

class RessourceSousRessourcesTest < ApplicationSystemTestCase
  setup do
    @ressource_sous_ressource = ressource_sous_ressources(:one)
  end

  test "visiting the index" do
    visit ressource_sous_ressources_url
    assert_selector "h1", text: "Ressource Sous Ressources"
  end

  test "creating a Ressource sous ressource" do
    visit ressource_sous_ressources_url
    click_on "New Ressource Sous Ressource"

    fill_in "Ressource", with: @ressource_sous_ressource.ressource_id
    fill_in "Sous type ressource", with: @ressource_sous_ressource.sous_type_ressource_id
    click_on "Create Ressource sous ressource"

    assert_text "Ressource sous ressource was successfully created"
    click_on "Back"
  end

  test "updating a Ressource sous ressource" do
    visit ressource_sous_ressources_url
    click_on "Edit", match: :first

    fill_in "Ressource", with: @ressource_sous_ressource.ressource_id
    fill_in "Sous type ressource", with: @ressource_sous_ressource.sous_type_ressource_id
    click_on "Update Ressource sous ressource"

    assert_text "Ressource sous ressource was successfully updated"
    click_on "Back"
  end

  test "destroying a Ressource sous ressource" do
    visit ressource_sous_ressources_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ressource sous ressource was successfully destroyed"
  end
end
