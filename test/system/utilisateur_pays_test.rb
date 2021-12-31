require "application_system_test_case"

class UtilisateurPaysTest < ApplicationSystemTestCase
  setup do
    @utilisateur_pay = utilisateur_pays(:one)
  end

  test "visiting the index" do
    visit utilisateur_pays_url
    assert_selector "h1", text: "Utilisateur Pays"
  end

  test "creating a Utilisateur pay" do
    visit utilisateur_pays_url
    click_on "New Utilisateur Pay"

    fill_in "Pay", with: @utilisateur_pay.pay_id
    fill_in "Utilisateur", with: @utilisateur_pay.utilisateur_id
    click_on "Create Utilisateur pay"

    assert_text "Utilisateur pay was successfully created"
    click_on "Back"
  end

  test "updating a Utilisateur pay" do
    visit utilisateur_pays_url
    click_on "Edit", match: :first

    fill_in "Pay", with: @utilisateur_pay.pay_id
    fill_in "Utilisateur", with: @utilisateur_pay.utilisateur_id
    click_on "Update Utilisateur pay"

    assert_text "Utilisateur pay was successfully updated"
    click_on "Back"
  end

  test "destroying a Utilisateur pay" do
    visit utilisateur_pays_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Utilisateur pay was successfully destroyed"
  end
end
