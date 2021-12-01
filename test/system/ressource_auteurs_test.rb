require "application_system_test_case"

class RessourceAuteursTest < ApplicationSystemTestCase
  setup do
    @ressource_auteur = ressource_auteurs(:one)
  end

  test "visiting the index" do
    visit ressource_auteurs_url
    assert_selector "h1", text: "Ressource Auteurs"
  end

  test "creating a Ressource auteur" do
    visit ressource_auteurs_url
    click_on "New Ressource Auteur"

    fill_in "Auteur", with: @ressource_auteur.auteur_id
    fill_in "Ressource", with: @ressource_auteur.ressource_id
    click_on "Create Ressource auteur"

    assert_text "Ressource auteur was successfully created"
    click_on "Back"
  end

  test "updating a Ressource auteur" do
    visit ressource_auteurs_url
    click_on "Edit", match: :first

    fill_in "Auteur", with: @ressource_auteur.auteur_id
    fill_in "Ressource", with: @ressource_auteur.ressource_id
    click_on "Update Ressource auteur"

    assert_text "Ressource auteur was successfully updated"
    click_on "Back"
  end

  test "destroying a Ressource auteur" do
    visit ressource_auteurs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ressource auteur was successfully destroyed"
  end
end
