require "application_system_test_case"

class SousThematiquesTest < ApplicationSystemTestCase
  setup do
    @sous_thematique = sous_thematiques(:one)
  end

  test "visiting the index" do
    visit sous_thematiques_url
    assert_selector "h1", text: "Sous Thematiques"
  end

  test "creating a Sous thematique" do
    visit sous_thematiques_url
    click_on "New Sous Thematique"

    fill_in "Description", with: @sous_thematique.description
    fill_in "Libelle", with: @sous_thematique.libelle
    click_on "Create Sous thematique"

    assert_text "Sous thematique was successfully created"
    click_on "Back"
  end

  test "updating a Sous thematique" do
    visit sous_thematiques_url
    click_on "Edit", match: :first

    fill_in "Description", with: @sous_thematique.description
    fill_in "Libelle", with: @sous_thematique.libelle
    click_on "Update Sous thematique"

    assert_text "Sous thematique was successfully updated"
    click_on "Back"
  end

  test "destroying a Sous thematique" do
    visit sous_thematiques_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sous thematique was successfully destroyed"
  end
end
