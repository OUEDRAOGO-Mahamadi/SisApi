require "application_system_test_case"

class UtilisateurTypeSIrriguesTest < ApplicationSystemTestCase
  setup do
    @utilisateur_type_s_irrigue = utilisateur_type_s_irrigues(:one)
  end

  test "visiting the index" do
    visit utilisateur_type_s_irrigues_url
    assert_selector "h1", text: "Utilisateur Type S Irrigues"
  end

  test "creating a Utilisateur type s irrigue" do
    visit utilisateur_type_s_irrigues_url
    click_on "New Utilisateur Type S Irrigue"

    fill_in "Type systeme irrigue", with: @utilisateur_type_s_irrigue.type_systeme_irrigue_id
    fill_in "Utilisateur", with: @utilisateur_type_s_irrigue.utilisateur_id
    click_on "Create Utilisateur type s irrigue"

    assert_text "Utilisateur type s irrigue was successfully created"
    click_on "Back"
  end

  test "updating a Utilisateur type s irrigue" do
    visit utilisateur_type_s_irrigues_url
    click_on "Edit", match: :first

    fill_in "Type systeme irrigue", with: @utilisateur_type_s_irrigue.type_systeme_irrigue_id
    fill_in "Utilisateur", with: @utilisateur_type_s_irrigue.utilisateur_id
    click_on "Update Utilisateur type s irrigue"

    assert_text "Utilisateur type s irrigue was successfully updated"
    click_on "Back"
  end

  test "destroying a Utilisateur type s irrigue" do
    visit utilisateur_type_s_irrigues_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Utilisateur type s irrigue was successfully destroyed"
  end
end
