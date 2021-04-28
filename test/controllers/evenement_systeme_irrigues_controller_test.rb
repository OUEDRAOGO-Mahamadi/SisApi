require "test_helper"

class EvenementSystemeIrriguesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @evenement_systeme_irrigue = evenement_systeme_irrigues(:one)
  end

  test "should get index" do
    get evenement_systeme_irrigues_url
    assert_response :success
  end

  test "should get new" do
    get new_evenement_systeme_irrigue_url
    assert_response :success
  end

  test "should create evenement_systeme_irrigue" do
    assert_difference('EvenementSystemeIrrigue.count') do
      post evenement_systeme_irrigues_url, params: { evenement_systeme_irrigue: { evenement_id: @evenement_systeme_irrigue.evenement_id, type_systeme_irrigue_id: @evenement_systeme_irrigue.type_systeme_irrigue_id } }
    end

    assert_redirected_to evenement_systeme_irrigue_url(EvenementSystemeIrrigue.last)
  end

  test "should show evenement_systeme_irrigue" do
    get evenement_systeme_irrigue_url(@evenement_systeme_irrigue)
    assert_response :success
  end

  test "should get edit" do
    get edit_evenement_systeme_irrigue_url(@evenement_systeme_irrigue)
    assert_response :success
  end

  test "should update evenement_systeme_irrigue" do
    patch evenement_systeme_irrigue_url(@evenement_systeme_irrigue), params: { evenement_systeme_irrigue: { evenement_id: @evenement_systeme_irrigue.evenement_id, type_systeme_irrigue_id: @evenement_systeme_irrigue.type_systeme_irrigue_id } }
    assert_redirected_to evenement_systeme_irrigue_url(@evenement_systeme_irrigue)
  end

  test "should destroy evenement_systeme_irrigue" do
    assert_difference('EvenementSystemeIrrigue.count', -1) do
      delete evenement_systeme_irrigue_url(@evenement_systeme_irrigue)
    end

    assert_redirected_to evenement_systeme_irrigues_url
  end
end
