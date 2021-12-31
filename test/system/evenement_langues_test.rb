require "application_system_test_case"

class EvenementLanguesTest < ApplicationSystemTestCase
  setup do
    @evenement_langue = evenement_langues(:one)
  end

  test "visiting the index" do
    visit evenement_langues_url
    assert_selector "h1", text: "Evenement Langues"
  end

  test "creating a Evenement langue" do
    visit evenement_langues_url
    click_on "New Evenement Langue"

    fill_in "Evenement", with: @evenement_langue.evenement_id
    fill_in "Langue", with: @evenement_langue.langue_id
    click_on "Create Evenement langue"

    assert_text "Evenement langue was successfully created"
    click_on "Back"
  end

  test "updating a Evenement langue" do
    visit evenement_langues_url
    click_on "Edit", match: :first

    fill_in "Evenement", with: @evenement_langue.evenement_id
    fill_in "Langue", with: @evenement_langue.langue_id
    click_on "Update Evenement langue"

    assert_text "Evenement langue was successfully updated"
    click_on "Back"
  end

  test "destroying a Evenement langue" do
    visit evenement_langues_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Evenement langue was successfully destroyed"
  end
end
