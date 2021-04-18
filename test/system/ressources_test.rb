require "application_system_test_case"

class RessourcesTest < ApplicationSystemTestCase
  setup do
    @ressource = ressources(:one)
  end

  test "visiting the index" do
    visit ressources_url
    assert_selector "h1", text: "Ressources"
  end

  test "creating a Ressource" do
    visit ressources_url
    click_on "New Ressource"

    fill_in "Date creation", with: @ressource.date_creation
    fill_in "Date debut publication", with: @ressource.date_debut_publication
    fill_in "Date fin publication", with: @ressource.date_fin_publication
    fill_in "Derniere date maj", with: @ressource.derniere_date_maj
    fill_in "Description", with: @ressource.description
    fill_in "Format", with: @ressource.format_id
    fill_in "Image", with: @ressource.image
    fill_in "Langue", with: @ressource.langue_id
    fill_in "Mot cle", with: @ressource.mot_cle_id
    fill_in "Nom", with: @ressource.nom
    fill_in "Profile", with: @ressource.profile_id
    fill_in "Statut", with: @ressource.statut
    fill_in "Thematique", with: @ressource.thematique_id
    fill_in "Type ressource", with: @ressource.type_ressource_id
    fill_in "Type systeme irrigue", with: @ressource.type_systeme_irrigue_id
    fill_in "Unite administrative", with: @ressource.unite_administrative_id
    fill_in "Url", with: @ressource.url
    fill_in "Utilisateur", with: @ressource.utilisateur_id
    fill_in "Video", with: @ressource.video
    click_on "Create Ressource"

    assert_text "Ressource was successfully created"
    click_on "Back"
  end

  test "updating a Ressource" do
    visit ressources_url
    click_on "Edit", match: :first

    fill_in "Date creation", with: @ressource.date_creation
    fill_in "Date debut publication", with: @ressource.date_debut_publication
    fill_in "Date fin publication", with: @ressource.date_fin_publication
    fill_in "Derniere date maj", with: @ressource.derniere_date_maj
    fill_in "Description", with: @ressource.description
    fill_in "Format", with: @ressource.format_id
    fill_in "Image", with: @ressource.image
    fill_in "Langue", with: @ressource.langue_id
    fill_in "Mot cle", with: @ressource.mot_cle_id
    fill_in "Nom", with: @ressource.nom
    fill_in "Profile", with: @ressource.profile_id
    fill_in "Statut", with: @ressource.statut
    fill_in "Thematique", with: @ressource.thematique_id
    fill_in "Type ressource", with: @ressource.type_ressource_id
    fill_in "Type systeme irrigue", with: @ressource.type_systeme_irrigue_id
    fill_in "Unite administrative", with: @ressource.unite_administrative_id
    fill_in "Url", with: @ressource.url
    fill_in "Utilisateur", with: @ressource.utilisateur_id
    fill_in "Video", with: @ressource.video
    click_on "Update Ressource"

    assert_text "Ressource was successfully updated"
    click_on "Back"
  end

  test "destroying a Ressource" do
    visit ressources_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ressource was successfully destroyed"
  end
end
