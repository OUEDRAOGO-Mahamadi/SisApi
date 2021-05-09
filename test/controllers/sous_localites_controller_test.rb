require "test_helper"

class SousLocalitesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sous_localite = sous_localites(:one)
  end

  test "should get index" do
    get sous_localites_url
    assert_response :success
  end

  test "should get new" do
    get new_sous_localite_url
    assert_response :success
  end

  test "should create sous_localite" do
    assert_difference('SousLocalite.count') do
      post sous_localites_url, params: { sous_localite: { nom: @sous_localite.nom, type: @sous_localite.type } }
    end

    assert_redirected_to sous_localite_url(SousLocalite.last)
  end

  test "should show sous_localite" do
    get sous_localite_url(@sous_localite)
    assert_response :success
  end

  test "should get edit" do
    get edit_sous_localite_url(@sous_localite)
    assert_response :success
  end

  test "should update sous_localite" do
    patch sous_localite_url(@sous_localite), params: { sous_localite: { nom: @sous_localite.nom, type: @sous_localite.type } }
    assert_redirected_to sous_localite_url(@sous_localite)
  end

  test "should destroy sous_localite" do
    assert_difference('SousLocalite.count', -1) do
      delete sous_localite_url(@sous_localite)
    end

    assert_redirected_to sous_localites_url
  end
end
