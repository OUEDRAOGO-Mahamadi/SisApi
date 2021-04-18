require "test_helper"

class MotClesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mot_cle = mot_cles(:one)
  end

  test "should get index" do
    get mot_cles_url
    assert_response :success
  end

  test "should get new" do
    get new_mot_cle_url
    assert_response :success
  end

  test "should create mot_cle" do
    assert_difference('MotCle.count') do
      post mot_cles_url, params: { mot_cle: { libelle: @mot_cle.libelle } }
    end

    assert_redirected_to mot_cle_url(MotCle.last)
  end

  test "should show mot_cle" do
    get mot_cle_url(@mot_cle)
    assert_response :success
  end

  test "should get edit" do
    get edit_mot_cle_url(@mot_cle)
    assert_response :success
  end

  test "should update mot_cle" do
    patch mot_cle_url(@mot_cle), params: { mot_cle: { libelle: @mot_cle.libelle } }
    assert_redirected_to mot_cle_url(@mot_cle)
  end

  test "should destroy mot_cle" do
    assert_difference('MotCle.count', -1) do
      delete mot_cle_url(@mot_cle)
    end

    assert_redirected_to mot_cles_url
  end
end
