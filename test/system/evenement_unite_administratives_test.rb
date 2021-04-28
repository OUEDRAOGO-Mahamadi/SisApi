require "application_system_test_case"

class EvenementUniteAdministrativesTest < ApplicationSystemTestCase
  setup do
    @evenement_unite_administrative = evenement_unite_administratives(:one)
  end

  test "visiting the index" do
    visit evenement_unite_administratives_url
    assert_selector "h1", text: "Evenement Unite Administratives"
  end

  test "creating a Evenement unite administrative" do
    visit evenement_unite_administratives_url
    click_on "New Evenement Unite Administrative"

    fill_in "Evenement", with: @evenement_unite_administrative.evenement_id
    fill_in "Unite administrative", with: @evenement_unite_administrative.unite_administrative_id
    click_on "Create Evenement unite administrative"

    assert_text "Evenement unite administrative was successfully created"
    click_on "Back"
  end

  test "updating a Evenement unite administrative" do
    visit evenement_unite_administratives_url
    click_on "Edit", match: :first

    fill_in "Evenement", with: @evenement_unite_administrative.evenement_id
    fill_in "Unite administrative", with: @evenement_unite_administrative.unite_administrative_id
    click_on "Update Evenement unite administrative"

    assert_text "Evenement unite administrative was successfully updated"
    click_on "Back"
  end

  test "destroying a Evenement unite administrative" do
    visit evenement_unite_administratives_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Evenement unite administrative was successfully destroyed"
  end
end
