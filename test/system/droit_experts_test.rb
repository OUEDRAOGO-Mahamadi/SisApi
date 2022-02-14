require "application_system_test_case"

class DroitExpertsTest < ApplicationSystemTestCase
  setup do
    @droit_expert = droit_experts(:one)
  end

  test "visiting the index" do
    visit droit_experts_url
    assert_selector "h1", text: "Droit Experts"
  end

  test "creating a Droit expert" do
    visit droit_experts_url
    click_on "New Droit Expert"

    check "Creer" if @droit_expert.creer
    fill_in "Libelle", with: @droit_expert.libelle
    check "Lire" if @droit_expert.lire
    check "Modifier" if @droit_expert.modifier
    check "Supprimer" if @droit_expert.supprimer
    click_on "Create Droit expert"

    assert_text "Droit expert was successfully created"
    click_on "Back"
  end

  test "updating a Droit expert" do
    visit droit_experts_url
    click_on "Edit", match: :first

    check "Creer" if @droit_expert.creer
    fill_in "Libelle", with: @droit_expert.libelle
    check "Lire" if @droit_expert.lire
    check "Modifier" if @droit_expert.modifier
    check "Supprimer" if @droit_expert.supprimer
    click_on "Update Droit expert"

    assert_text "Droit expert was successfully updated"
    click_on "Back"
  end

  test "destroying a Droit expert" do
    visit droit_experts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Droit expert was successfully destroyed"
  end
end
