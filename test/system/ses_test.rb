require "application_system_test_case"

class sesTest < ApplicationSystemTestCase
  setup do
    @se = ses(:one)
  end

  test "visiting the index" do
    visit ses_url
    assert_selector "h1", text: "Ses"
  end

  test "creating a Sis" do
    visit ses_url
    click_on "New Sis"

    fill_in "Condition", with: @se.condition
    fill_in "Description", with: @se.description
    click_on "Create Sis"

    assert_text "Sis was successfully created"
    click_on "Back"
  end

  test "updating a Sis" do
    visit ses_url
    click_on "Edit", match: :first

    fill_in "Condition", with: @se.condition
    fill_in "Description", with: @se.description
    click_on "Update Sis"

    assert_text "Sis was successfully updated"
    click_on "Back"
  end

  test "destroying a Sis" do
    visit ses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Sis was successfully destroyed"
  end
end
