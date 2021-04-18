require "test_helper"

class TypeEvenementsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_evenement = type_evenements(:one)
  end

  test "should get index" do
    get type_evenements_url
    assert_response :success
  end

  test "should get new" do
    get new_type_evenement_url
    assert_response :success
  end

  test "should create type_evenement" do
    assert_difference('TypeEvenement.count') do
      post type_evenements_url, params: { type_evenement: { description: @type_evenement.description, libelle: @type_evenement.libelle } }
    end

    assert_redirected_to type_evenement_url(TypeEvenement.last)
  end

  test "should show type_evenement" do
    get type_evenement_url(@type_evenement)
    assert_response :success
  end

  test "should get edit" do
    get edit_type_evenement_url(@type_evenement)
    assert_response :success
  end

  test "should update type_evenement" do
    patch type_evenement_url(@type_evenement), params: { type_evenement: { description: @type_evenement.description, libelle: @type_evenement.libelle } }
    assert_redirected_to type_evenement_url(@type_evenement)
  end

  test "should destroy type_evenement" do
    assert_difference('TypeEvenement.count', -1) do
      delete type_evenement_url(@type_evenement)
    end

    assert_redirected_to type_evenements_url
  end
end
