require "application_system_test_case"

class ExpertSousTypesTest < ApplicationSystemTestCase
  setup do
    @expert_sous_type = expert_sous_types(:one)
  end

  test "visiting the index" do
    visit expert_sous_types_url
    assert_selector "h1", text: "Expert Sous Types"
  end

  test "creating a Expert sous type" do
    visit expert_sous_types_url
    click_on "New Expert Sous Type"

    fill_in "Sous type expert", with: @expert_sous_type.sous_type_expert_id
    fill_in "Utilisateur", with: @expert_sous_type.utilisateur_id
    click_on "Create Expert sous type"

    assert_text "Expert sous type was successfully created"
    click_on "Back"
  end

  test "updating a Expert sous type" do
    visit expert_sous_types_url
    click_on "Edit", match: :first

    fill_in "Sous type expert", with: @expert_sous_type.sous_type_expert_id
    fill_in "Utilisateur", with: @expert_sous_type.utilisateur_id
    click_on "Update Expert sous type"

    assert_text "Expert sous type was successfully updated"
    click_on "Back"
  end

  test "destroying a Expert sous type" do
    visit expert_sous_types_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Expert sous type was successfully destroyed"
  end
end
