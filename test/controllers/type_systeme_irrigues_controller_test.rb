require "test_helper"

class TypeSystemeIrriguesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_systeme_irrigue = type_systeme_irrigues(:one)
  end

  test "should get index" do
    get type_systeme_irrigues_url
    assert_response :success
  end

  test "should get new" do
    get new_type_systeme_irrigue_url
    assert_response :success
  end

  test "should create type_systeme_irrigue" do
    assert_difference('TypeSystemeIrrigue.count') do
      post type_systeme_irrigues_url, params: { type_systeme_irrigue: { caracteristique_id: @type_systeme_irrigue.caracteristique_id, description: @type_systeme_irrigue.description, libelle: @type_systeme_irrigue.libelle, sigle: @type_systeme_irrigue.sigle } }
    end

    assert_redirected_to type_systeme_irrigue_url(TypeSystemeIrrigue.last)
  end

  test "should show type_systeme_irrigue" do
    get type_systeme_irrigue_url(@type_systeme_irrigue)
    assert_response :success
  end

  test "should get edit" do
    get edit_type_systeme_irrigue_url(@type_systeme_irrigue)
    assert_response :success
  end

  test "should update type_systeme_irrigue" do
    patch type_systeme_irrigue_url(@type_systeme_irrigue), params: { type_systeme_irrigue: { caracteristique_id: @type_systeme_irrigue.caracteristique_id, description: @type_systeme_irrigue.description, libelle: @type_systeme_irrigue.libelle, sigle: @type_systeme_irrigue.sigle } }
    assert_redirected_to type_systeme_irrigue_url(@type_systeme_irrigue)
  end

  test "should destroy type_systeme_irrigue" do
    assert_difference('TypeSystemeIrrigue.count', -1) do
      delete type_systeme_irrigue_url(@type_systeme_irrigue)
    end

    assert_redirected_to type_systeme_irrigues_url
  end
end
