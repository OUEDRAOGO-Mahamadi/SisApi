require "application_system_test_case"

class UtilisateurThematiquesTest < ApplicationSystemTestCase
  setup do
    @utilisateur_thematique = utilisateur_thematiques(:one)
  end

  test "visiting the index" do
    visit utilisateur_thematiques_url
    assert_selector "h1", text: "Utilisateur Thematiques"
  end

  test "creating a Utilisateur thematique" do
    visit utilisateur_thematiques_url
    click_on "New Utilisateur Thematique"

    fill_in "Thematique", with: @utilisateur_thematique.thematique_id
    fill_in "Utilisateur", with: @utilisateur_thematique.utilisateur_id
    click_on "Create Utilisateur thematique"

    assert_text "Utilisateur thematique was successfully created"
    click_on "Back"
  end

  test "updating a Utilisateur thematique" do
    visit utilisateur_thematiques_url
    click_on "Edit", match: :first

    fill_in "Thematique", with: @utilisateur_thematique.thematique_id
    fill_in "Utilisateur", with: @utilisateur_thematique.utilisateur_id
    click_on "Update Utilisateur thematique"

    assert_text "Utilisateur thematique was successfully updated"
    click_on "Back"
  end

  test "destroying a Utilisateur thematique" do
    visit utilisateur_thematiques_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Utilisateur thematique was successfully destroyed"
  end
end
