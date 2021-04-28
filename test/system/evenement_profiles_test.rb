require "application_system_test_case"

class EvenementProfilesTest < ApplicationSystemTestCase
  setup do
    @evenement_profile = evenement_profiles(:one)
  end

  test "visiting the index" do
    visit evenement_profiles_url
    assert_selector "h1", text: "Evenement Profiles"
  end

  test "creating a Evenement profile" do
    visit evenement_profiles_url
    click_on "New Evenement Profile"

    fill_in "Evenement", with: @evenement_profile.evenement_id
    fill_in "Profile", with: @evenement_profile.profile_id
    click_on "Create Evenement profile"

    assert_text "Evenement profile was successfully created"
    click_on "Back"
  end

  test "updating a Evenement profile" do
    visit evenement_profiles_url
    click_on "Edit", match: :first

    fill_in "Evenement", with: @evenement_profile.evenement_id
    fill_in "Profile", with: @evenement_profile.profile_id
    click_on "Update Evenement profile"

    assert_text "Evenement profile was successfully updated"
    click_on "Back"
  end

  test "destroying a Evenement profile" do
    visit evenement_profiles_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Evenement profile was successfully destroyed"
  end
end
