require "application_system_test_case"

class EvenementMotClesTest < ApplicationSystemTestCase
  setup do
    @evenement_mot_cle = evenement_mot_cles(:one)
  end

  test "visiting the index" do
    visit evenement_mot_cles_url
    assert_selector "h1", text: "Evenement Mot Cles"
  end

  test "creating a Evenement mot cle" do
    visit evenement_mot_cles_url
    click_on "New Evenement Mot Cle"

    fill_in "Evenement", with: @evenement_mot_cle.evenement_id
    fill_in "Mot cle", with: @evenement_mot_cle.mot_cle_id
    click_on "Create Evenement mot cle"

    assert_text "Evenement mot cle was successfully created"
    click_on "Back"
  end

  test "updating a Evenement mot cle" do
    visit evenement_mot_cles_url
    click_on "Edit", match: :first

    fill_in "Evenement", with: @evenement_mot_cle.evenement_id
    fill_in "Mot cle", with: @evenement_mot_cle.mot_cle_id
    click_on "Update Evenement mot cle"

    assert_text "Evenement mot cle was successfully updated"
    click_on "Back"
  end

  test "destroying a Evenement mot cle" do
    visit evenement_mot_cles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Evenement mot cle was successfully destroyed"
  end
end
