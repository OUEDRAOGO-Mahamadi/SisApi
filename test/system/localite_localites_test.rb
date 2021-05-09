require "application_system_test_case"

class LocaliteLocalitesTest < ApplicationSystemTestCase
  setup do
    @localite_localite = localite_localites(:one)
  end

  test "visiting the index" do
    visit localite_localites_url
    assert_selector "h1", text: "Localite Localites"
  end

  test "creating a Localite localite" do
    visit localite_localites_url
    click_on "New Localite Localite"

    fill_in "Localite", with: @localite_localite.localite_id
    fill_in "Sous localite", with: @localite_localite.sous_localite_id
    click_on "Create Localite localite"

    assert_text "Localite localite was successfully created"
    click_on "Back"
  end

  test "updating a Localite localite" do
    visit localite_localites_url
    click_on "Edit", match: :first

    fill_in "Localite", with: @localite_localite.localite_id
    fill_in "Sous localite", with: @localite_localite.sous_localite_id
    click_on "Update Localite localite"

    assert_text "Localite localite was successfully updated"
    click_on "Back"
  end

  test "destroying a Localite localite" do
    visit localite_localites_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Localite localite was successfully destroyed"
  end
end
