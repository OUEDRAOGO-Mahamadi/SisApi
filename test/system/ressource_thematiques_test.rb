require "application_system_test_case"

class RessourceThematiquesTest < ApplicationSystemTestCase
  setup do
    @ressource_thematique = ressource_thematiques(:one)
  end

  test "visiting the index" do
    visit ressource_thematiques_url
    assert_selector "h1", text: "Ressource Thematiques"
  end

  test "creating a Ressource thematique" do
    visit ressource_thematiques_url
    click_on "New Ressource Thematique"

    fill_in "Ressource", with: @ressource_thematique.ressource_id
    fill_in "Thematique", with: @ressource_thematique.thematique_id
    click_on "Create Ressource thematique"

    assert_text "Ressource thematique was successfully created"
    click_on "Back"
  end

  test "updating a Ressource thematique" do
    visit ressource_thematiques_url
    click_on "Edit", match: :first

    fill_in "Ressource", with: @ressource_thematique.ressource_id
    fill_in "Thematique", with: @ressource_thematique.thematique_id
    click_on "Update Ressource thematique"

    assert_text "Ressource thematique was successfully updated"
    click_on "Back"
  end

  test "destroying a Ressource thematique" do
    visit ressource_thematiques_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ressource thematique was successfully destroyed"
  end
end
