require "test_helper"

class SousTypeExpertsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sous_type_expert = sous_type_experts(:one)
  end

  test "should get index" do
    get sous_type_experts_url
    assert_response :success
  end

  test "should get new" do
    get new_sous_type_expert_url
    assert_response :success
  end

  test "should create sous_type_expert" do
    assert_difference('SousTypeExpert.count') do
      post sous_type_experts_url, params: { sous_type_expert: { description: @sous_type_expert.description, libelle: @sous_type_expert.libelle, sigle: @sous_type_expert.sigle } }
    end

    assert_redirected_to sous_type_expert_url(SousTypeExpert.last)
  end

  test "should show sous_type_expert" do
    get sous_type_expert_url(@sous_type_expert)
    assert_response :success
  end

  test "should get edit" do
    get edit_sous_type_expert_url(@sous_type_expert)
    assert_response :success
  end

  test "should update sous_type_expert" do
    patch sous_type_expert_url(@sous_type_expert), params: { sous_type_expert: { description: @sous_type_expert.description, libelle: @sous_type_expert.libelle, sigle: @sous_type_expert.sigle } }
    assert_redirected_to sous_type_expert_url(@sous_type_expert)
  end

  test "should destroy sous_type_expert" do
    assert_difference('SousTypeExpert.count', -1) do
      delete sous_type_expert_url(@sous_type_expert)
    end

    assert_redirected_to sous_type_experts_url
  end
end
