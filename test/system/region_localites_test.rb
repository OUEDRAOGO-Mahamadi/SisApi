require "application_system_test_case"

class RegionLocalitesTest < ApplicationSystemTestCase
  setup do
    @region_localite = region_localites(:one)
  end

  test "visiting the index" do
    visit region_localites_url
    assert_selector "h1", text: "Region Localites"
  end

  test "creating a Region localite" do
    visit region_localites_url
    click_on "New Region Localite"

    fill_in "Localite", with: @region_localite.localite_id
    fill_in "Region", with: @region_localite.region_id
    click_on "Create Region localite"

    assert_text "Region localite was successfully created"
    click_on "Back"
  end

  test "updating a Region localite" do
    visit region_localites_url
    click_on "Edit", match: :first

    fill_in "Localite", with: @region_localite.localite_id
    fill_in "Region", with: @region_localite.region_id
    click_on "Update Region localite"

    assert_text "Region localite was successfully updated"
    click_on "Back"
  end

  test "destroying a Region localite" do
    visit region_localites_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Region localite was successfully destroyed"
  end
end
