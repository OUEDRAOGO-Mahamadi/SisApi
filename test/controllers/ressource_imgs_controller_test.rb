require "test_helper"

class RessourceImgsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ressource_img = ressource_imgs(:one)
  end

  test "should get index" do
    get ressource_imgs_url
    assert_response :success
  end

  test "should get new" do
    get new_ressource_img_url
    assert_response :success
  end

  test "should create ressource_img" do
    assert_difference('RessourceImg.count') do
      post ressource_imgs_url, params: { ressource_img: { image_id: @ressource_img.image_id, ressource_id: @ressource_img.ressource_id } }
    end

    assert_redirected_to ressource_img_url(RessourceImg.last)
  end

  test "should show ressource_img" do
    get ressource_img_url(@ressource_img)
    assert_response :success
  end

  test "should get edit" do
    get edit_ressource_img_url(@ressource_img)
    assert_response :success
  end

  test "should update ressource_img" do
    patch ressource_img_url(@ressource_img), params: { ressource_img: { image_id: @ressource_img.image_id, ressource_id: @ressource_img.ressource_id } }
    assert_redirected_to ressource_img_url(@ressource_img)
  end

  test "should destroy ressource_img" do
    assert_difference('RessourceImg.count', -1) do
      delete ressource_img_url(@ressource_img)
    end

    assert_redirected_to ressource_imgs_url
  end
end
