require "test_helper"

class TypeSousExpertsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_sous_expert = type_sous_experts(:one)
  end

  test "should get index" do
    get type_sous_experts_url
    assert_response :success
  end

  test "should get new" do
    get new_type_sous_expert_url
    assert_response :success
  end

  test "should create type_sous_expert" do
    assert_difference('TypeSousExpert.count') do
      post type_sous_experts_url, params: { type_sous_expert: { sous_type_expert_id: @type_sous_expert.sous_type_expert_id, type_expert_id: @type_sous_expert.type_expert_id } }
    end

    assert_redirected_to type_sous_expert_url(TypeSousExpert.last)
  end

  test "should show type_sous_expert" do
    get type_sous_expert_url(@type_sous_expert)
    assert_response :success
  end

  test "should get edit" do
    get edit_type_sous_expert_url(@type_sous_expert)
    assert_response :success
  end

  test "should update type_sous_expert" do
    patch type_sous_expert_url(@type_sous_expert), params: { type_sous_expert: { sous_type_expert_id: @type_sous_expert.sous_type_expert_id, type_expert_id: @type_sous_expert.type_expert_id } }
    assert_redirected_to type_sous_expert_url(@type_sous_expert)
  end

  test "should destroy type_sous_expert" do
    assert_difference('TypeSousExpert.count', -1) do
      delete type_sous_expert_url(@type_sous_expert)
    end

    assert_redirected_to type_sous_experts_url
  end
end
