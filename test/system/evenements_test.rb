require "application_system_test_case"

class EvenementsTest < ApplicationSystemTestCase
  setup do
    @evenement = evenements(:one)
  end

  test "visiting the index" do
    visit evenements_url
    assert_selector "h1", text: "Evenements"
  end

  test "creating a Evenement" do
    visit evenements_url
    click_on "New Evenement"

    fill_in "Cible", with: @evenement.cible
    fill_in "Date debut", with: @evenement.date_debut
    fill_in "Date fin", with: @evenement.date_fin
    fill_in "Description", with: @evenement.description
    fill_in "Heure debut", with: @evenement.heure_debut
    fill_in "Heure fin", with: @evenement.heure_fin
    fill_in "Libelle", with: @evenement.libelle
    fill_in "Lieu", with: @evenement.lieu
    fill_in "Objectif", with: @evenement.objectif
    fill_in "Organisateur", with: @evenement.organisateur
    fill_in "Profile", with: @evenement.profile_id
    fill_in "Thematique", with: @evenement.thematique_id
    fill_in "Type evenement", with: @evenement.type_evenement_id
    fill_in "Type systeme irrigue", with: @evenement.type_systeme_irrigue_id
    fill_in "Unite administrative", with: @evenement.unite_administrative_id
    fill_in "Url", with: @evenement.url
    click_on "Create Evenement"

    assert_text "Evenement was successfully created"
    click_on "Back"
  end

  test "updating a Evenement" do
    visit evenements_url
    click_on "Edit", match: :first

    fill_in "Cible", with: @evenement.cible
    fill_in "Date debut", with: @evenement.date_debut
    fill_in "Date fin", with: @evenement.date_fin
    fill_in "Description", with: @evenement.description
    fill_in "Heure debut", with: @evenement.heure_debut
    fill_in "Heure fin", with: @evenement.heure_fin
    fill_in "Libelle", with: @evenement.libelle
    fill_in "Lieu", with: @evenement.lieu
    fill_in "Objectif", with: @evenement.objectif
    fill_in "Organisateur", with: @evenement.organisateur
    fill_in "Profile", with: @evenement.profile_id
    fill_in "Thematique", with: @evenement.thematique_id
    fill_in "Type evenement", with: @evenement.type_evenement_id
    fill_in "Type systeme irrigue", with: @evenement.type_systeme_irrigue_id
    fill_in "Unite administrative", with: @evenement.unite_administrative_id
    fill_in "Url", with: @evenement.url
    click_on "Update Evenement"

    assert_text "Evenement was successfully updated"
    click_on "Back"
  end

  test "destroying a Evenement" do
    visit evenements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Evenement was successfully destroyed"
  end
end
