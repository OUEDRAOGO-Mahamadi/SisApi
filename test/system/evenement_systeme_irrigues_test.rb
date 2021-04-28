require "application_system_test_case"

class EvenementSystemeIrriguesTest < ApplicationSystemTestCase
  setup do
    @evenement_systeme_irrigue = evenement_systeme_irrigues(:one)
  end

  test "visiting the index" do
    visit evenement_systeme_irrigues_url
    assert_selector "h1", text: "Evenement Systeme Irrigues"
  end

  test "creating a Evenement systeme irrigue" do
    visit evenement_systeme_irrigues_url
    click_on "New Evenement Systeme Irrigue"

    fill_in "Evenement", with: @evenement_systeme_irrigue.evenement_id
    fill_in "Type systeme irrigue", with: @evenement_systeme_irrigue.type_systeme_irrigue_id
    click_on "Create Evenement systeme irrigue"

    assert_text "Evenement systeme irrigue was successfully created"
    click_on "Back"
  end

  test "updating a Evenement systeme irrigue" do
    visit evenement_systeme_irrigues_url
    click_on "Edit", match: :first

    fill_in "Evenement", with: @evenement_systeme_irrigue.evenement_id
    fill_in "Type systeme irrigue", with: @evenement_systeme_irrigue.type_systeme_irrigue_id
    click_on "Update Evenement systeme irrigue"

    assert_text "Evenement systeme irrigue was successfully updated"
    click_on "Back"
  end

  test "destroying a Evenement systeme irrigue" do
    visit evenement_systeme_irrigues_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Evenement systeme irrigue was successfully destroyed"
  end
end
