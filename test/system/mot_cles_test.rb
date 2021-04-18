require "application_system_test_case"

class MotClesTest < ApplicationSystemTestCase
  setup do
    @mot_cle = mot_cles(:one)
  end

  test "visiting the index" do
    visit mot_cles_url
    assert_selector "h1", text: "Mot Cles"
  end

  test "creating a Mot cle" do
    visit mot_cles_url
    click_on "New Mot Cle"

    fill_in "Libelle", with: @mot_cle.libelle
    click_on "Create Mot cle"

    assert_text "Mot cle was successfully created"
    click_on "Back"
  end

  test "updating a Mot cle" do
    visit mot_cles_url
    click_on "Edit", match: :first

    fill_in "Libelle", with: @mot_cle.libelle
    click_on "Update Mot cle"

    assert_text "Mot cle was successfully updated"
    click_on "Back"
  end

  test "destroying a Mot cle" do
    visit mot_cles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Mot cle was successfully destroyed"
  end
end
