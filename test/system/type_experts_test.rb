require "application_system_test_case"

class TypeExpertsTest < ApplicationSystemTestCase
  setup do
    @type_expert = type_experts(:one)
  end

  test "visiting the index" do
    visit type_experts_url
    assert_selector "h1", text: "Type Experts"
  end

  test "creating a Type expert" do
    visit type_experts_url
    click_on "New Type Expert"

    fill_in "Description", with: @type_expert.description
    fill_in "Libelle", with: @type_expert.libelle
    fill_in "Sigle", with: @type_expert.sigle
    click_on "Create Type expert"

    assert_text "Type expert was successfully created"
    click_on "Back"
  end

  test "updating a Type expert" do
    visit type_experts_url
    click_on "Edit", match: :first

    fill_in "Description", with: @type_expert.description
    fill_in "Libelle", with: @type_expert.libelle
    fill_in "Sigle", with: @type_expert.sigle
    click_on "Update Type expert"

    assert_text "Type expert was successfully updated"
    click_on "Back"
  end

  test "destroying a Type expert" do
    visit type_experts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Type expert was successfully destroyed"
  end
end
