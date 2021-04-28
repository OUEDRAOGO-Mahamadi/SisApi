require "test_helper"

class EvenementUniteAdministrativesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @evenement_unite_administrative = evenement_unite_administratives(:one)
  end

  test "should get index" do
    get evenement_unite_administratives_url
    assert_response :success
  end

  test "should get new" do
    get new_evenement_unite_administrative_url
    assert_response :success
  end

  test "should create evenement_unite_administrative" do
    assert_difference('EvenementUniteAdministrative.count') do
      post evenement_unite_administratives_url, params: { evenement_unite_administrative: { evenement_id: @evenement_unite_administrative.evenement_id, unite_administrative_id: @evenement_unite_administrative.unite_administrative_id } }
    end

    assert_redirected_to evenement_unite_administrative_url(EvenementUniteAdministrative.last)
  end

  test "should show evenement_unite_administrative" do
    get evenement_unite_administrative_url(@evenement_unite_administrative)
    assert_response :success
  end

  test "should get edit" do
    get edit_evenement_unite_administrative_url(@evenement_unite_administrative)
    assert_response :success
  end

  test "should update evenement_unite_administrative" do
    patch evenement_unite_administrative_url(@evenement_unite_administrative), params: { evenement_unite_administrative: { evenement_id: @evenement_unite_administrative.evenement_id, unite_administrative_id: @evenement_unite_administrative.unite_administrative_id } }
    assert_redirected_to evenement_unite_administrative_url(@evenement_unite_administrative)
  end

  test "should destroy evenement_unite_administrative" do
    assert_difference('EvenementUniteAdministrative.count', -1) do
      delete evenement_unite_administrative_url(@evenement_unite_administrative)
    end

    assert_redirected_to evenement_unite_administratives_url
  end
end
