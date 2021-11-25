require "application_system_test_case"

class PaysUniteAdministrativesTest < ApplicationSystemTestCase
  setup do
    @pays_unite_administrative = pays_unite_administratives(:one)
  end

  test "visiting the index" do
    visit pays_unite_administratives_url
    assert_selector "h1", text: "Pays Unite Administratives"
  end

  test "creating a Pays unite administrative" do
    visit pays_unite_administratives_url
    click_on "New Pays Unite Administrative"

    fill_in "Pay", with: @pays_unite_administrative.pay_id
    fill_in "Unite administrative", with: @pays_unite_administrative.unite_administrative_id
    click_on "Create Pays unite administrative"

    assert_text "Pays unite administrative was successfully created"
    click_on "Back"
  end

  test "updating a Pays unite administrative" do
    visit pays_unite_administratives_url
    click_on "Edit", match: :first

    fill_in "Pay", with: @pays_unite_administrative.pay_id
    fill_in "Unite administrative", with: @pays_unite_administrative.unite_administrative_id
    click_on "Update Pays unite administrative"

    assert_text "Pays unite administrative was successfully updated"
    click_on "Back"
  end

  test "destroying a Pays unite administrative" do
    visit pays_unite_administratives_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pays unite administrative was successfully destroyed"
  end
end
