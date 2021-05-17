require "application_system_test_case"

class RessourcePaysTest < ApplicationSystemTestCase
  setup do
    @ressource_pay = ressource_pays(:one)
  end

  test "visiting the index" do
    visit ressource_pays_url
    assert_selector "h1", text: "Ressource Pays"
  end

  test "creating a Ressource pay" do
    visit ressource_pays_url
    click_on "New Ressource Pay"

    fill_in "Pay", with: @ressource_pay.pay_id
    fill_in "Ressource", with: @ressource_pay.ressource_id
    click_on "Create Ressource pay"

    assert_text "Ressource pay was successfully created"
    click_on "Back"
  end

  test "updating a Ressource pay" do
    visit ressource_pays_url
    click_on "Edit", match: :first

    fill_in "Pay", with: @ressource_pay.pay_id
    fill_in "Ressource", with: @ressource_pay.ressource_id
    click_on "Update Ressource pay"

    assert_text "Ressource pay was successfully updated"
    click_on "Back"
  end

  test "destroying a Ressource pay" do
    visit ressource_pays_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ressource pay was successfully destroyed"
  end
end
