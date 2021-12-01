require "application_system_test_case"

class AuteursTest < ApplicationSystemTestCase
  setup do
    @auteur = auteurs(:one)
  end

  test "visiting the index" do
    visit auteurs_url
    assert_selector "h1", text: "Auteurs"
  end

  test "creating a Auteur" do
    visit auteurs_url
    click_on "New Auteur"

    fill_in "Nom", with: @auteur.nom
    click_on "Create Auteur"

    assert_text "Auteur was successfully created"
    click_on "Back"
  end

  test "updating a Auteur" do
    visit auteurs_url
    click_on "Edit", match: :first

    fill_in "Nom", with: @auteur.nom
    click_on "Update Auteur"

    assert_text "Auteur was successfully updated"
    click_on "Back"
  end

  test "destroying a Auteur" do
    visit auteurs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Auteur was successfully destroyed"
  end
end
