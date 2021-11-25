require "application_system_test_case"

class SousTypeRessourcesTest < ApplicationSystemTestCase
  setup do
    @sous_type_ressource = sous_type_ressources(:one)
  end

  test "visiting the index" do
    visit sous_type_ressources_url
    assert_selector "h1", text: "Sous Type Ressources"
  end

  test "creating a Sous type ressource" do
    visit sous_type_ressources_url
    click_on "New Sous Type Ressource"

    fill_in "Description", with: @sous_type_ressource.description
    fill_in "Libelle", with: @sous_type_ressource.libelle
    fill_in "Sigle", with: @sous_type_ressource.sigle
    click_on "Create Sous type ressource"

    assert_text "Sous type ressource was successfully created"
    click_on "Back"
  end

  test "updating a Sous type ressource" do
    visit sous_type_ressources_url
    click_on "Edit", match: :first

    fill_in "Description", with: @sous_type_ressource.description
    fill_in "Libelle", with: @sous_type_ressource.libelle
    fill_in "Sigle", with: @sous_type_ressource.sigle
    click_on "Update Sous type ressource"

    assert_text "Sous type ressource was successfully updated"
    click_on "Back"
  end

  test "destroying a Sous type ressource" do
    visit sous_type_ressources_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sous type ressource was successfully destroyed"
  end
end
