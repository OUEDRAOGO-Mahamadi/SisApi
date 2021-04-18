require "application_system_test_case"

class TypeRessourcesTest < ApplicationSystemTestCase
  setup do
    @type_ressource = type_ressources(:one)
  end

  test "visiting the index" do
    visit type_ressources_url
    assert_selector "h1", text: "Type Ressources"
  end

  test "creating a Type ressource" do
    visit type_ressources_url
    click_on "New Type Ressource"

    fill_in "Description", with: @type_ressource.description
    fill_in "Libelle", with: @type_ressource.libelle
    fill_in "Sigle", with: @type_ressource.sigle
    click_on "Create Type ressource"

    assert_text "Type ressource was successfully created"
    click_on "Back"
  end

  test "updating a Type ressource" do
    visit type_ressources_url
    click_on "Edit", match: :first

    fill_in "Description", with: @type_ressource.description
    fill_in "Libelle", with: @type_ressource.libelle
    fill_in "Sigle", with: @type_ressource.sigle
    click_on "Update Type ressource"

    assert_text "Type ressource was successfully updated"
    click_on "Back"
  end

  test "destroying a Type ressource" do
    visit type_ressources_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Type ressource was successfully destroyed"
  end
end
