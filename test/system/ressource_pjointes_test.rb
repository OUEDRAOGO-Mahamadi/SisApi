require "application_system_test_case"

class RessourcePjointesTest < ApplicationSystemTestCase
  setup do
    @ressource_pjointe = ressource_pjointes(:one)
  end

  test "visiting the index" do
    visit ressource_pjointes_url
    assert_selector "h1", text: "Ressource Pjointes"
  end

  test "creating a Ressource pjointe" do
    visit ressource_pjointes_url
    click_on "New Ressource Pjointe"

    fill_in "Pjointe", with: @ressource_pjointe.pjointe_id
    fill_in "Ressource", with: @ressource_pjointe.ressource_id
    click_on "Create Ressource pjointe"

    assert_text "Ressource pjointe was successfully created"
    click_on "Back"
  end

  test "updating a Ressource pjointe" do
    visit ressource_pjointes_url
    click_on "Edit", match: :first

    fill_in "Pjointe", with: @ressource_pjointe.pjointe_id
    fill_in "Ressource", with: @ressource_pjointe.ressource_id
    click_on "Update Ressource pjointe"

    assert_text "Ressource pjointe was successfully updated"
    click_on "Back"
  end

  test "destroying a Ressource pjointe" do
    visit ressource_pjointes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ressource pjointe was successfully destroyed"
  end
end
