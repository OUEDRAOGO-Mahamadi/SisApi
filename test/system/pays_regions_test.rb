require "application_system_test_case"

class PaysRegionsTest < ApplicationSystemTestCase
  setup do
    @pays_region = pays_regions(:one)
  end

  test "visiting the index" do
    visit pays_regions_url
    assert_selector "h1", text: "Pays Regions"
  end

  test "creating a Pays region" do
    visit pays_regions_url
    click_on "New Pays Region"

    fill_in "Pays", with: @pays_region.pays_id
    fill_in "Region", with: @pays_region.region_id
    click_on "Create Pays region"

    assert_text "Pays region was successfully created"
    click_on "Back"
  end

  test "updating a Pays region" do
    visit pays_regions_url
    click_on "Edit", match: :first

    fill_in "Pays", with: @pays_region.pays_id
    fill_in "Region", with: @pays_region.region_id
    click_on "Update Pays region"

    assert_text "Pays region was successfully updated"
    click_on "Back"
  end

  test "destroying a Pays region" do
    visit pays_regions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Pays region was successfully destroyed"
  end
end
