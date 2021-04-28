require "test_helper"

class SousThematiquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sous_thematique = sous_thematiques(:one)
  end

  test "should get index" do
    get sous_thematiques_url
    assert_response :success
  end

  test "should get new" do
    get new_sous_thematique_url
    assert_response :success
  end

  test "should create sous_thematique" do
    assert_difference('SousThematique.count') do
      post sous_thematiques_url, params: { sous_thematique: { description: @sous_thematique.description, libelle: @sous_thematique.libelle } }
    end

    assert_redirected_to sous_thematique_url(SousThematique.last)
  end

  test "should show sous_thematique" do
    get sous_thematique_url(@sous_thematique)
    assert_response :success
  end

  test "should get edit" do
    get edit_sous_thematique_url(@sous_thematique)
    assert_response :success
  end

  test "should update sous_thematique" do
    patch sous_thematique_url(@sous_thematique), params: { sous_thematique: { description: @sous_thematique.description, libelle: @sous_thematique.libelle } }
    assert_redirected_to sous_thematique_url(@sous_thematique)
  end

  test "should destroy sous_thematique" do
    assert_difference('SousThematique.count', -1) do
      delete sous_thematique_url(@sous_thematique)
    end

    assert_redirected_to sous_thematiques_url
  end
end
