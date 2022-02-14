require "test_helper"

class DroitExpertsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @droit_expert = droit_experts(:one)
  end

  test "should get index" do
    get droit_experts_url
    assert_response :success
  end

  test "should get new" do
    get new_droit_expert_url
    assert_response :success
  end

  test "should create droit_expert" do
    assert_difference('DroitExpert.count') do
      post droit_experts_url, params: { droit_expert: { creer: @droit_expert.creer, libelle: @droit_expert.libelle, lire: @droit_expert.lire, modifier: @droit_expert.modifier, supprimer: @droit_expert.supprimer } }
    end

    assert_redirected_to droit_expert_url(DroitExpert.last)
  end

  test "should show droit_expert" do
    get droit_expert_url(@droit_expert)
    assert_response :success
  end

  test "should get edit" do
    get edit_droit_expert_url(@droit_expert)
    assert_response :success
  end

  test "should update droit_expert" do
    patch droit_expert_url(@droit_expert), params: { droit_expert: { creer: @droit_expert.creer, libelle: @droit_expert.libelle, lire: @droit_expert.lire, modifier: @droit_expert.modifier, supprimer: @droit_expert.supprimer } }
    assert_redirected_to droit_expert_url(@droit_expert)
  end

  test "should destroy droit_expert" do
    assert_difference('DroitExpert.count', -1) do
      delete droit_expert_url(@droit_expert)
    end

    assert_redirected_to droit_experts_url
  end
end
