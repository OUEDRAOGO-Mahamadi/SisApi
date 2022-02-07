require "application_system_test_case"

class TypeSousExpertsTest < ApplicationSystemTestCase
  setup do
    @type_sous_expert = type_sous_experts(:one)
  end

  test "visiting the index" do
    visit type_sous_experts_url
    assert_selector "h1", text: "Type Sous Experts"
  end

  test "creating a Type sous expert" do
    visit type_sous_experts_url
    click_on "New Type Sous Expert"

    fill_in "Sous type expert", with: @type_sous_expert.sous_type_expert_id
    fill_in "Type expert", with: @type_sous_expert.type_expert_id
    click_on "Create Type sous expert"

    assert_text "Type sous expert was successfully created"
    click_on "Back"
  end

  test "updating a Type sous expert" do
    visit type_sous_experts_url
    click_on "Edit", match: :first

    fill_in "Sous type expert", with: @type_sous_expert.sous_type_expert_id
    fill_in "Type expert", with: @type_sous_expert.type_expert_id
    click_on "Update Type sous expert"

    assert_text "Type sous expert was successfully updated"
    click_on "Back"
  end

  test "destroying a Type sous expert" do
    visit type_sous_experts_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Type sous expert was successfully destroyed"
  end
end
