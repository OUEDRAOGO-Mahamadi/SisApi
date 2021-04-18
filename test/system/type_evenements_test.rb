require "application_system_test_case"

class TypeEvenementsTest < ApplicationSystemTestCase
  setup do
    @type_evenement = type_evenements(:one)
  end

  test "visiting the index" do
    visit type_evenements_url
    assert_selector "h1", text: "Type Evenements"
  end

  test "creating a Type evenement" do
    visit type_evenements_url
    click_on "New Type Evenement"

    fill_in "Description", with: @type_evenement.description
    fill_in "Libelle", with: @type_evenement.libelle
    click_on "Create Type evenement"

    assert_text "Type evenement was successfully created"
    click_on "Back"
  end

  test "updating a Type evenement" do
    visit type_evenements_url
    click_on "Edit", match: :first

    fill_in "Description", with: @type_evenement.description
    fill_in "Libelle", with: @type_evenement.libelle
    click_on "Update Type evenement"

    assert_text "Type evenement was successfully updated"
    click_on "Back"
  end

  test "destroying a Type evenement" do
    visit type_evenements_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Type evenement was successfully destroyed"
  end
end
