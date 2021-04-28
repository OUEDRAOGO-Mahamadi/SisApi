require "application_system_test_case"

class SystemeIrrigueCaracteristiquesTest < ApplicationSystemTestCase
  setup do
    @systeme_irrigue_caracteristique = systeme_irrigue_caracteristiques(:one)
  end

  test "visiting the index" do
    visit systeme_irrigue_caracteristiques_url
    assert_selector "h1", text: "Systeme Irrigue Caracteristiques"
  end

  test "creating a Systeme irrigue caracteristique" do
    visit systeme_irrigue_caracteristiques_url
    click_on "New Systeme Irrigue Caracteristique"

    fill_in "Caracteristique", with: @systeme_irrigue_caracteristique.caracteristique_id
    fill_in "Type systeme irrigue", with: @systeme_irrigue_caracteristique.type_systeme_irrigue_id
    click_on "Create Systeme irrigue caracteristique"

    assert_text "Systeme irrigue caracteristique was successfully created"
    click_on "Back"
  end

  test "updating a Systeme irrigue caracteristique" do
    visit systeme_irrigue_caracteristiques_url
    click_on "Edit", match: :first

    fill_in "Caracteristique", with: @systeme_irrigue_caracteristique.caracteristique_id
    fill_in "Type systeme irrigue", with: @systeme_irrigue_caracteristique.type_systeme_irrigue_id
    click_on "Update Systeme irrigue caracteristique"

    assert_text "Systeme irrigue caracteristique was successfully updated"
    click_on "Back"
  end

  test "destroying a Systeme irrigue caracteristique" do
    visit systeme_irrigue_caracteristiques_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Systeme irrigue caracteristique was successfully destroyed"
  end
end
