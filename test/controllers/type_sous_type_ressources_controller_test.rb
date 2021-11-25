require "test_helper"

class TypeSousTypeRessourcesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_sous_type_ressource = type_sous_type_ressources(:one)
  end

  test "should get index" do
    get type_sous_type_ressources_url
    assert_response :success
  end

  test "should get new" do
    get new_type_sous_type_ressource_url
    assert_response :success
  end

  test "should create type_sous_type_ressource" do
    assert_difference('TypeSousTypeRessource.count') do
      post type_sous_type_ressources_url, params: { type_sous_type_ressource: { sous_type_ressource_id: @type_sous_type_ressource.sous_type_ressource_id, type_ressource_id: @type_sous_type_ressource.type_ressource_id } }
    end

    assert_redirected_to type_sous_type_ressource_url(TypeSousTypeRessource.last)
  end

  test "should show type_sous_type_ressource" do
    get type_sous_type_ressource_url(@type_sous_type_ressource)
    assert_response :success
  end

  test "should get edit" do
    get edit_type_sous_type_ressource_url(@type_sous_type_ressource)
    assert_response :success
  end

  test "should update type_sous_type_ressource" do
    patch type_sous_type_ressource_url(@type_sous_type_ressource), params: { type_sous_type_ressource: { sous_type_ressource_id: @type_sous_type_ressource.sous_type_ressource_id, type_ressource_id: @type_sous_type_ressource.type_ressource_id } }
    assert_redirected_to type_sous_type_ressource_url(@type_sous_type_ressource)
  end

  test "should destroy type_sous_type_ressource" do
    assert_difference('TypeSousTypeRessource.count', -1) do
      delete type_sous_type_ressource_url(@type_sous_type_ressource)
    end

    assert_redirected_to type_sous_type_ressources_url
  end
end
