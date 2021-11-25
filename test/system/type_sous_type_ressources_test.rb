require "application_system_test_case"

class TypeSousTypeRessourcesTest < ApplicationSystemTestCase
  setup do
    @type_sous_type_ressource = type_sous_type_ressources(:one)
  end

  test "visiting the index" do
    visit type_sous_type_ressources_url
    assert_selector "h1", text: "Type Sous Type Ressources"
  end

  test "creating a Type sous type ressource" do
    visit type_sous_type_ressources_url
    click_on "New Type Sous Type Ressource"

    fill_in "Sous type ressource", with: @type_sous_type_ressource.sous_type_ressource_id
    fill_in "Type ressource", with: @type_sous_type_ressource.type_ressource_id
    click_on "Create Type sous type ressource"

    assert_text "Type sous type ressource was successfully created"
    click_on "Back"
  end

  test "updating a Type sous type ressource" do
    visit type_sous_type_ressources_url
    click_on "Edit", match: :first

    fill_in "Sous type ressource", with: @type_sous_type_ressource.sous_type_ressource_id
    fill_in "Type ressource", with: @type_sous_type_ressource.type_ressource_id
    click_on "Update Type sous type ressource"

    assert_text "Type sous type ressource was successfully updated"
    click_on "Back"
  end

  test "destroying a Type sous type ressource" do
    visit type_sous_type_ressources_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Type sous type ressource was successfully destroyed"
  end
end
