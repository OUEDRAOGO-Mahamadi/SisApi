require "test_helper"

class SystemeIrrigueCaracteristiquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @systeme_irrigue_caracteristique = systeme_irrigue_caracteristiques(:one)
  end

  test "should get index" do
    get systeme_irrigue_caracteristiques_url
    assert_response :success
  end

  test "should get new" do
    get new_systeme_irrigue_caracteristique_url
    assert_response :success
  end

  test "should create systeme_irrigue_caracteristique" do
    assert_difference('SystemeIrrigueCaracteristique.count') do
      post systeme_irrigue_caracteristiques_url, params: { systeme_irrigue_caracteristique: { caracteristique_id: @systeme_irrigue_caracteristique.caracteristique_id, type_systeme_irrigue_id: @systeme_irrigue_caracteristique.type_systeme_irrigue_id } }
    end

    assert_redirected_to systeme_irrigue_caracteristique_url(SystemeIrrigueCaracteristique.last)
  end

  test "should show systeme_irrigue_caracteristique" do
    get systeme_irrigue_caracteristique_url(@systeme_irrigue_caracteristique)
    assert_response :success
  end

  test "should get edit" do
    get edit_systeme_irrigue_caracteristique_url(@systeme_irrigue_caracteristique)
    assert_response :success
  end

  test "should update systeme_irrigue_caracteristique" do
    patch systeme_irrigue_caracteristique_url(@systeme_irrigue_caracteristique), params: { systeme_irrigue_caracteristique: { caracteristique_id: @systeme_irrigue_caracteristique.caracteristique_id, type_systeme_irrigue_id: @systeme_irrigue_caracteristique.type_systeme_irrigue_id } }
    assert_redirected_to systeme_irrigue_caracteristique_url(@systeme_irrigue_caracteristique)
  end

  test "should destroy systeme_irrigue_caracteristique" do
    assert_difference('SystemeIrrigueCaracteristique.count', -1) do
      delete systeme_irrigue_caracteristique_url(@systeme_irrigue_caracteristique)
    end

    assert_redirected_to systeme_irrigue_caracteristiques_url
  end
end
