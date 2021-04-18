require "application_system_test_case"

class ThematiquesTest < ApplicationSystemTestCase
  setup do
    @thematique = thematiques(:one)
  end

  test "visiting the index" do
    visit thematiques_url
    assert_selector "h1", text: "Thematiques"
  end

  test "creating a Thematique" do
    visit thematiques_url
    click_on "New Thematique"

    fill_in "Description", with: @thematique.description
    fill_in "Libelle", with: @thematique.libelle
    fill_in "Thematique", with: @thematique.thematique_id
    click_on "Create Thematique"

    assert_text "Thematique was successfully created"
    click_on "Back"
  end

  test "updating a Thematique" do
    visit thematiques_url
    click_on "Edit", match: :first

    fill_in "Description", with: @thematique.description
    fill_in "Libelle", with: @thematique.libelle
    fill_in "Thematique", with: @thematique.thematique_id
    click_on "Update Thematique"

    assert_text "Thematique was successfully updated"
    click_on "Back"
  end

  test "destroying a Thematique" do
    visit thematiques_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Thematique was successfully destroyed"
  end
end
