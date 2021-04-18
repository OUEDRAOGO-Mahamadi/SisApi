require "application_system_test_case"

class TypeSystemeIrriguesTest < ApplicationSystemTestCase
  setup do
    @type_systeme_irrigue = type_systeme_irrigues(:one)
  end

  test "visiting the index" do
    visit type_systeme_irrigues_url
    assert_selector "h1", text: "Type Systeme Irrigues"
  end

  test "creating a Type systeme irrigue" do
    visit type_systeme_irrigues_url
    click_on "New Type Systeme Irrigue"

    fill_in "Caracteristique", with: @type_systeme_irrigue.caracteristique_id
    fill_in "Description", with: @type_systeme_irrigue.description
    fill_in "Libelle", with: @type_systeme_irrigue.libelle
    fill_in "Sigle", with: @type_systeme_irrigue.sigle
    click_on "Create Type systeme irrigue"

    assert_text "Type systeme irrigue was successfully created"
    click_on "Back"
  end

  test "updating a Type systeme irrigue" do
    visit type_systeme_irrigues_url
    click_on "Edit", match: :first

    fill_in "Caracteristique", with: @type_systeme_irrigue.caracteristique_id
    fill_in "Description", with: @type_systeme_irrigue.description
    fill_in "Libelle", with: @type_systeme_irrigue.libelle
    fill_in "Sigle", with: @type_systeme_irrigue.sigle
    click_on "Update Type systeme irrigue"

    assert_text "Type systeme irrigue was successfully updated"
    click_on "Back"
  end

  test "destroying a Type systeme irrigue" do
    visit type_systeme_irrigues_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Type systeme irrigue was successfully destroyed"
  end
end
