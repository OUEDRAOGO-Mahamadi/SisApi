require "test_helper"

class EvenementMotClesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @evenement_mot_cle = evenement_mot_cles(:one)
  end

  test "should get index" do
    get evenement_mot_cles_url
    assert_response :success
  end

  test "should get new" do
    get new_evenement_mot_cle_url
    assert_response :success
  end

  test "should create evenement_mot_cle" do
    assert_difference('EvenementMotCle.count') do
      post evenement_mot_cles_url, params: { evenement_mot_cle: { evenement_id: @evenement_mot_cle.evenement_id, mot_cle_id: @evenement_mot_cle.mot_cle_id } }
    end

    assert_redirected_to evenement_mot_cle_url(EvenementMotCle.last)
  end

  test "should show evenement_mot_cle" do
    get evenement_mot_cle_url(@evenement_mot_cle)
    assert_response :success
  end

  test "should get edit" do
    get edit_evenement_mot_cle_url(@evenement_mot_cle)
    assert_response :success
  end

  test "should update evenement_mot_cle" do
    patch evenement_mot_cle_url(@evenement_mot_cle), params: { evenement_mot_cle: { evenement_id: @evenement_mot_cle.evenement_id, mot_cle_id: @evenement_mot_cle.mot_cle_id } }
    assert_redirected_to evenement_mot_cle_url(@evenement_mot_cle)
  end

  test "should destroy evenement_mot_cle" do
    assert_difference('EvenementMotCle.count', -1) do
      delete evenement_mot_cle_url(@evenement_mot_cle)
    end

    assert_redirected_to evenement_mot_cles_url
  end
end
