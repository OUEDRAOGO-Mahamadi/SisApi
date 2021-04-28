require "test_helper"

class EvenementThematiquesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @evenement_thematique = evenement_thematiques(:one)
  end

  test "should get index" do
    get evenement_thematiques_url
    assert_response :success
  end

  test "should get new" do
    get new_evenement_thematique_url
    assert_response :success
  end

  test "should create evenement_thematique" do
    assert_difference('EvenementThematique.count') do
      post evenement_thematiques_url, params: { evenement_thematique: { evenement_id: @evenement_thematique.evenement_id, thematique_id: @evenement_thematique.thematique_id } }
    end

    assert_redirected_to evenement_thematique_url(EvenementThematique.last)
  end

  test "should show evenement_thematique" do
    get evenement_thematique_url(@evenement_thematique)
    assert_response :success
  end

  test "should get edit" do
    get edit_evenement_thematique_url(@evenement_thematique)
    assert_response :success
  end

  test "should update evenement_thematique" do
    patch evenement_thematique_url(@evenement_thematique), params: { evenement_thematique: { evenement_id: @evenement_thematique.evenement_id, thematique_id: @evenement_thematique.thematique_id } }
    assert_redirected_to evenement_thematique_url(@evenement_thematique)
  end

  test "should destroy evenement_thematique" do
    assert_difference('EvenementThematique.count', -1) do
      delete evenement_thematique_url(@evenement_thematique)
    end

    assert_redirected_to evenement_thematiques_url
  end
end
