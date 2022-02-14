require "application_system_test_case"

class DroitRessourcesTest < ApplicationSystemTestCase
  setup do
    @droit_ressource = droit_ressources(:one)
  end

  test "visiting the index" do
    visit droit_ressources_url
    assert_selector "h1", text: "Droit Ressources"
  end

  test "creating a Droit ressource" do
    visit droit_ressources_url
    click_on "New Droit Ressource"

    check "Creer" if @droit_ressource.creer
    fill_in "Libelle", with: @droit_ressource.libelle
    check "Lire" if @droit_ressource.lire
    check "Modifier" if @droit_ressource.modifier
    check "Supprimer" if @droit_ressource.supprimer
    click_on "Create Droit ressource"

    assert_text "Droit ressource was successfully created"
    click_on "Back"
  end

  test "updating a Droit ressource" do
    visit droit_ressources_url
    click_on "Edit", match: :first

    check "Creer" if @droit_ressource.creer
    fill_in "Libelle", with: @droit_ressource.libelle
    check "Lire" if @droit_ressource.lire
    check "Modifier" if @droit_ressource.modifier
    check "Supprimer" if @droit_ressource.supprimer
    click_on "Update Droit ressource"

    assert_text "Droit ressource was successfully updated"
    click_on "Back"
  end

  test "destroying a Droit ressource" do
    visit droit_ressources_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Droit ressource was successfully destroyed"
  end
end
