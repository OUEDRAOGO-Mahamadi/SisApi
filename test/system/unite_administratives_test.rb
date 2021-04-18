require "application_system_test_case"

class UniteAdministrativesTest < ApplicationSystemTestCase
  setup do
    @unite_administrative = unite_administratives(:one)
  end

  test "visiting the index" do
    visit unite_administratives_url
    assert_selector "h1", text: "Unite Administratives"
  end

  test "creating a Unite administrative" do
    visit unite_administratives_url
    click_on "New Unite Administrative"

    fill_in "Code", with: @unite_administrative.code
    fill_in "Libelle", with: @unite_administrative.libelle
    click_on "Create Unite administrative"

    assert_text "Unite administrative was successfully created"
    click_on "Back"
  end

  test "updating a Unite administrative" do
    visit unite_administratives_url
    click_on "Edit", match: :first

    fill_in "Code", with: @unite_administrative.code
    fill_in "Libelle", with: @unite_administrative.libelle
    click_on "Update Unite administrative"

    assert_text "Unite administrative was successfully updated"
    click_on "Back"
  end

  test "destroying a Unite administrative" do
    visit unite_administratives_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Unite administrative was successfully destroyed"
  end
end
