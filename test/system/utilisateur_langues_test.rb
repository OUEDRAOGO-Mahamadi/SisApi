require "application_system_test_case"

class UtilisateurLanguesTest < ApplicationSystemTestCase
  setup do
    @utilisateur_langue = utilisateur_langues(:one)
  end

  test "visiting the index" do
    visit utilisateur_langues_url
    assert_selector "h1", text: "Utilisateur Langues"
  end

  test "creating a Utilisateur langue" do
    visit utilisateur_langues_url
    click_on "New Utilisateur Langue"

    fill_in "Langue", with: @utilisateur_langue.langue_id
    fill_in "Utilisateur", with: @utilisateur_langue.utilisateur_id
    click_on "Create Utilisateur langue"

    assert_text "Utilisateur langue was successfully created"
    click_on "Back"
  end

  test "updating a Utilisateur langue" do
    visit utilisateur_langues_url
    click_on "Edit", match: :first

    fill_in "Langue", with: @utilisateur_langue.langue_id
    fill_in "Utilisateur", with: @utilisateur_langue.utilisateur_id
    click_on "Update Utilisateur langue"

    assert_text "Utilisateur langue was successfully updated"
    click_on "Back"
  end

  test "destroying a Utilisateur langue" do
    visit utilisateur_langues_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Utilisateur langue was successfully destroyed"
  end
end
