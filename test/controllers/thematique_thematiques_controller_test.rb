require "test_helper"

class ThematiqueThematiquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @thematique_thematique = thematique_thematiques(:one)
  end

  test "should get index" do
    get thematique_thematiques_url
    assert_response :success
  end

  test "should get new" do
    get new_thematique_thematique_url
    assert_response :success
  end

  test "should create thematique_thematique" do
    assert_difference('ThematiqueThematique.count') do
      post thematique_thematiques_url, params: { thematique_thematique: { thematique_id: @thematique_thematique.thematique_id } }
    end

    assert_redirected_to thematique_thematique_url(ThematiqueThematique.last)
  end

  test "should show thematique_thematique" do
    get thematique_thematique_url(@thematique_thematique)
    assert_response :success
  end

  test "should get edit" do
    get edit_thematique_thematique_url(@thematique_thematique)
    assert_response :success
  end

  test "should update thematique_thematique" do
    patch thematique_thematique_url(@thematique_thematique), params: { thematique_thematique: { thematique_id: @thematique_thematique.thematique_id } }
    assert_redirected_to thematique_thematique_url(@thematique_thematique)
  end

  test "should destroy thematique_thematique" do
    assert_difference('ThematiqueThematique.count', -1) do
      delete thematique_thematique_url(@thematique_thematique)
    end

    assert_redirected_to thematique_thematiques_url
  end
end
