require "application_system_test_case"

class UtilisateursTest < ApplicationSystemTestCase
  setup do
    @utilisateur = utilisateurs(:one)
  end

  test "visiting the index" do
    visit utilisateurs_url
    assert_selector "h1", text: "Utilisateurs"
  end

  test "creating a Utilisateur" do
    visit utilisateurs_url
    click_on "New Utilisateur"

    fill_in "Categorie", with: @utilisateur.categorie_id
    fill_in "Email", with: @utilisateur.email
    fill_in "Fonction", with: @utilisateur.fonction
    fill_in "Nom", with: @utilisateur.nom
    fill_in "Password", with: @utilisateur.password
    fill_in "Prenom", with: @utilisateur.prenom
    fill_in "Profile", with: @utilisateur.profile_id
    fill_in "Specialite", with: @utilisateur.specialite_id
    fill_in "Status", with: @utilisateur.status
    fill_in "Structure", with: @utilisateur.structure_id
    fill_in "Telephone", with: @utilisateur.telephone
    click_on "Create Utilisateur"

    assert_text "Utilisateur was successfully created"
    click_on "Back"
  end

  test "updating a Utilisateur" do
    visit utilisateurs_url
    click_on "Edit", match: :first

    fill_in "Categorie", with: @utilisateur.categorie_id
    fill_in "Email", with: @utilisateur.email
    fill_in "Fonction", with: @utilisateur.fonction
    fill_in "Nom", with: @utilisateur.nom
    fill_in "Password", with: @utilisateur.password
    fill_in "Prenom", with: @utilisateur.prenom
    fill_in "Profile", with: @utilisateur.profile_id
    fill_in "Specialite", with: @utilisateur.specialite_id
    fill_in "Status", with: @utilisateur.status
    fill_in "Structure", with: @utilisateur.structure_id
    fill_in "Telephone", with: @utilisateur.telephone
    click_on "Update Utilisateur"

    assert_text "Utilisateur was successfully updated"
    click_on "Back"
  end

  test "destroying a Utilisateur" do
    visit utilisateurs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Utilisateur was successfully destroyed"
  end
end
