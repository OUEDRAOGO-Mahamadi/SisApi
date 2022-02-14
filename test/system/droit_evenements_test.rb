require "application_system_test_case"

class DroitEvenementsTest < ApplicationSystemTestCase
  setup do
    @droit_evenement = droit_evenements(:one)
  end

  test "visiting the index" do
    visit droit_evenements_url
    assert_selector "h1", text: "Droit Evenements"
  end

  test "creating a Droit evenement" do
    visit droit_evenements_url
    click_on "New Droit Evenement"

    check "Creer" if @droit_evenement.creer
    fill_in "Libelle", with: @droit_evenement.libelle
    check "Lire" if @droit_evenement.lire
    check "Modifier" if @droit_evenement.modifier
    check "Supprimer" if @droit_evenement.supprimer
    click_on "Create Droit evenement"

    assert_text "Droit evenement was successfully created"
    click_on "Back"
  end

  test "updating a Droit evenement" do
    visit droit_evenements_url
    click_on "Edit", match: :first

    check "Creer" if @droit_evenement.creer
    fill_in "Libelle", with: @droit_evenement.libelle
    check "Lire" if @droit_evenement.lire
    check "Modifier" if @droit_evenement.modifier
    check "Supprimer" if @droit_evenement.supprimer
    click_on "Update Droit evenement"

    assert_text "Droit evenement was successfully updated"
    click_on "Back"
  end

  test "destroying a Droit evenement" do
    visit droit_evenements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Droit evenement was successfully destroyed"
  end
end
