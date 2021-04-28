require "application_system_test_case"

class UtilisateurSpecialitesTest < ApplicationSystemTestCase
  setup do
    @utilisateur_specialite = utilisateur_specialites(:one)
  end

  test "visiting the index" do
    visit utilisateur_specialites_url
    assert_selector "h1", text: "Utilisateur Specialites"
  end

  test "creating a Utilisateur specialite" do
    visit utilisateur_specialites_url
    click_on "New Utilisateur Specialite"

    fill_in "Specialite", with: @utilisateur_specialite.specialite_id
    fill_in "Utilisateur", with: @utilisateur_specialite.utilisateur_id
    click_on "Create Utilisateur specialite"

    assert_text "Utilisateur specialite was successfully created"
    click_on "Back"
  end

  test "updating a Utilisateur specialite" do
    visit utilisateur_specialites_url
    click_on "Edit", match: :first

    fill_in "Specialite", with: @utilisateur_specialite.specialite_id
    fill_in "Utilisateur", with: @utilisateur_specialite.utilisateur_id
    click_on "Update Utilisateur specialite"

    assert_text "Utilisateur specialite was successfully updated"
    click_on "Back"
  end

  test "destroying a Utilisateur specialite" do
    visit utilisateur_specialites_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Utilisateur specialite was successfully destroyed"
  end
end
