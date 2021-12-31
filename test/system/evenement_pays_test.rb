require "application_system_test_case"

class EvenementPaysTest < ApplicationSystemTestCase
  setup do
    @evenement_pay = evenement_pays(:one)
  end

  test "visiting the index" do
    visit evenement_pays_url
    assert_selector "h1", text: "Evenement Pays"
  end

  test "creating a Evenement pay" do
    visit evenement_pays_url
    click_on "New Evenement Pay"

    fill_in "Evenement", with: @evenement_pay.evenement_id
    fill_in "Pay", with: @evenement_pay.pay_id
    click_on "Create Evenement pay"

    assert_text "Evenement pay was successfully created"
    click_on "Back"
  end

  test "updating a Evenement pay" do
    visit evenement_pays_url
    click_on "Edit", match: :first

    fill_in "Evenement", with: @evenement_pay.evenement_id
    fill_in "Pay", with: @evenement_pay.pay_id
    click_on "Update Evenement pay"

    assert_text "Evenement pay was successfully updated"
    click_on "Back"
  end

  test "destroying a Evenement pay" do
    visit evenement_pays_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Evenement pay was successfully destroyed"
  end
end
