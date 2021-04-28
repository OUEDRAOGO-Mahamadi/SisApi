require "application_system_test_case"

class ThematiqueSousThematiquesTest < ApplicationSystemTestCase
  setup do
    @thematique_sous_thematique = thematique_sous_thematiques(:one)
  end

  test "visiting the index" do
    visit thematique_sous_thematiques_url
    assert_selector "h1", text: "Thematique Sous Thematiques"
  end

  test "creating a Thematique sous thematique" do
    visit thematique_sous_thematiques_url
    click_on "New Thematique Sous Thematique"

    fill_in "Sous thematique", with: @thematique_sous_thematique.sous_thematique_id
    fill_in "Thematique", with: @thematique_sous_thematique.thematique_id
    click_on "Create Thematique sous thematique"

    assert_text "Thematique sous thematique was successfully created"
    click_on "Back"
  end

  test "updating a Thematique sous thematique" do
    visit thematique_sous_thematiques_url
    click_on "Edit", match: :first

    fill_in "Sous thematique", with: @thematique_sous_thematique.sous_thematique_id
    fill_in "Thematique", with: @thematique_sous_thematique.thematique_id
    click_on "Update Thematique sous thematique"

    assert_text "Thematique sous thematique was successfully updated"
    click_on "Back"
  end

  test "destroying a Thematique sous thematique" do
    visit thematique_sous_thematiques_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Thematique sous thematique was successfully destroyed"
  end
end
