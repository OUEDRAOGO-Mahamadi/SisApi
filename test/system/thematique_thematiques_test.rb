require "application_system_test_case"

class ThematiqueThematiquesTest < ApplicationSystemTestCase
  setup do
    @thematique_thematique = thematique_thematiques(:one)
  end

  test "visiting the index" do
    visit thematique_thematiques_url
    assert_selector "h1", text: "Thematique Thematiques"
  end

  test "creating a Thematique thematique" do
    visit thematique_thematiques_url
    click_on "New Thematique Thematique"

    fill_in "Thematique", with: @thematique_thematique.thematique_id
    click_on "Create Thematique thematique"

    assert_text "Thematique thematique was successfully created"
    click_on "Back"
  end

  test "updating a Thematique thematique" do
    visit thematique_thematiques_url
    click_on "Edit", match: :first

    fill_in "Thematique", with: @thematique_thematique.thematique_id
    click_on "Update Thematique thematique"

    assert_text "Thematique thematique was successfully updated"
    click_on "Back"
  end

  test "destroying a Thematique thematique" do
    visit thematique_thematiques_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Thematique thematique was successfully destroyed"
  end
end
