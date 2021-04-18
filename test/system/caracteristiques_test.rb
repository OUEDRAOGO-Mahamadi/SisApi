require "application_system_test_case"

class CaracteristiquesTest < ApplicationSystemTestCase
  setup do
    @caracteristique = caracteristiques(:one)
  end

  test "visiting the index" do
    visit caracteristiques_url
    assert_selector "h1", text: "Caracteristiques"
  end

  test "creating a Caracteristique" do
    visit caracteristiques_url
    click_on "New Caracteristique"

    fill_in "Description", with: @caracteristique.description
    fill_in "Libelle", with: @caracteristique.libelle
    fill_in "Sigle", with: @caracteristique.sigle
    fill_in "Valeur", with: @caracteristique.valeur
    click_on "Create Caracteristique"

    assert_text "Caracteristique was successfully created"
    click_on "Back"
  end

  test "updating a Caracteristique" do
    visit caracteristiques_url
    click_on "Edit", match: :first

    fill_in "Description", with: @caracteristique.description
    fill_in "Libelle", with: @caracteristique.libelle
    fill_in "Sigle", with: @caracteristique.sigle
    fill_in "Valeur", with: @caracteristique.valeur
    click_on "Update Caracteristique"

    assert_text "Caracteristique was successfully updated"
    click_on "Back"
  end

  test "destroying a Caracteristique" do
    visit caracteristiques_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Caracteristique was successfully destroyed"
  end
end
