require "application_system_test_case"

class EvenementThematiquesTest < ApplicationSystemTestCase
  setup do
    @evenement_thematique = evenement_thematiques(:one)
  end

  test "visiting the index" do
    visit evenement_thematiques_url
    assert_selector "h1", text: "Evenement Thematiques"
  end

  test "creating a Evenement thematique" do
    visit evenement_thematiques_url
    click_on "New Evenement Thematique"

    fill_in "Evenement", with: @evenement_thematique.evenement_id
    fill_in "Thematique", with: @evenement_thematique.thematique_id
    click_on "Create Evenement thematique"

    assert_text "Evenement thematique was successfully created"
    click_on "Back"
  end

  test "updating a Evenement thematique" do
    visit evenement_thematiques_url
    click_on "Edit", match: :first

    fill_in "Evenement", with: @evenement_thematique.evenement_id
    fill_in "Thematique", with: @evenement_thematique.thematique_id
    click_on "Update Evenement thematique"

    assert_text "Evenement thematique was successfully updated"
    click_on "Back"
  end

  test "destroying a Evenement thematique" do
    visit evenement_thematiques_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Evenement thematique was successfully destroyed"
  end
end
