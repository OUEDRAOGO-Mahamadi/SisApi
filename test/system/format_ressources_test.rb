require "application_system_test_case"

class FormatRessourcesTest < ApplicationSystemTestCase
  setup do
    @format_ressource = format_ressources(:one)
  end

  test "visiting the index" do
    visit format_ressources_url
    assert_selector "h1", text: "Format Ressources"
  end

  test "creating a Format ressource" do
    visit format_ressources_url
    click_on "New Format Ressource"

    fill_in "Code", with: @format_ressource.code
    fill_in "Libelle", with: @format_ressource.libelle
    click_on "Create Format ressource"

    assert_text "Format ressource was successfully created"
    click_on "Back"
  end

  test "updating a Format ressource" do
    visit format_ressources_url
    click_on "Edit", match: :first

    fill_in "Code", with: @format_ressource.code
    fill_in "Libelle", with: @format_ressource.libelle
    click_on "Update Format ressource"

    assert_text "Format ressource was successfully updated"
    click_on "Back"
  end

  test "destroying a Format ressource" do
    visit format_ressources_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Format ressource was successfully destroyed"
  end
end
