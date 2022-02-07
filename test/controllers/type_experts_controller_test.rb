require "test_helper"

class TypeExpertsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @type_expert = type_experts(:one)
  end

  test "should get index" do
    get type_experts_url
    assert_response :success
  end

  test "should get new" do
    get new_type_expert_url
    assert_response :success
  end

  test "should create type_expert" do
    assert_difference('TypeExpert.count') do
      post type_experts_url, params: { type_expert: { description: @type_expert.description, libelle: @type_expert.libelle, sigle: @type_expert.sigle } }
    end

    assert_redirected_to type_expert_url(TypeExpert.last)
  end

  test "should show type_expert" do
    get type_expert_url(@type_expert)
    assert_response :success
  end

  test "should get edit" do
    get edit_type_expert_url(@type_expert)
    assert_response :success
  end

  test "should update type_expert" do
    patch type_expert_url(@type_expert), params: { type_expert: { description: @type_expert.description, libelle: @type_expert.libelle, sigle: @type_expert.sigle } }
    assert_redirected_to type_expert_url(@type_expert)
  end

  test "should destroy type_expert" do
    assert_difference('TypeExpert.count', -1) do
      delete type_expert_url(@type_expert)
    end

    assert_redirected_to type_experts_url
  end
end
