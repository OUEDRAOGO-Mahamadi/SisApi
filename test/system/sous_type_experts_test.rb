require "application_system_test_case"

class SousTypeExpertsTest < ApplicationSystemTestCase
  setup do
    @sous_type_expert = sous_type_experts(:one)
  end

  test "visiting the index" do
    visit sous_type_experts_url
    assert_selector "h1", text: "Sous Type Experts"
  end

  test "creating a Sous type expert" do
    visit sous_type_experts_url
    click_on "New Sous Type Expert"

    fill_in "Description", with: @sous_type_expert.description
    fill_in "Libelle", with: @sous_type_expert.libelle
    fill_in "Sigle", with: @sous_type_expert.sigle
    click_on "Create Sous type expert"

    assert_text "Sous type expert was successfully created"
    click_on "Back"
  end

  test "updating a Sous type expert" do
    visit sous_type_experts_url
    click_on "Edit", match: :first

    fill_in "Description", with: @sous_type_expert.description
    fill_in "Libelle", with: @sous_type_expert.libelle
    fill_in "Sigle", with: @sous_type_expert.sigle
    click_on "Update Sous type expert"

    assert_text "Sous type expert was successfully updated"
    click_on "Back"
  end

  test "destroying a Sous type expert" do
    visit sous_type_experts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sous type expert was successfully destroyed"
  end
end
