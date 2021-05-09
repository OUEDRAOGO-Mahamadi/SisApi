require "application_system_test_case"

class RessourceImgsTest < ApplicationSystemTestCase
  setup do
    @ressource_img = ressource_imgs(:one)
  end

  test "visiting the index" do
    visit ressource_imgs_url
    assert_selector "h1", text: "Ressource Imgs"
  end

  test "creating a Ressource img" do
    visit ressource_imgs_url
    click_on "New Ressource Img"

    fill_in "Image", with: @ressource_img.image_id
    fill_in "Ressource", with: @ressource_img.ressource_id
    click_on "Create Ressource img"

    assert_text "Ressource img was successfully created"
    click_on "Back"
  end

  test "updating a Ressource img" do
    visit ressource_imgs_url
    click_on "Edit", match: :first

    fill_in "Image", with: @ressource_img.image_id
    fill_in "Ressource", with: @ressource_img.ressource_id
    click_on "Update Ressource img"

    assert_text "Ressource img was successfully updated"
    click_on "Back"
  end

  test "destroying a Ressource img" do
    visit ressource_imgs_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Ressource img was successfully destroyed"
  end
end
