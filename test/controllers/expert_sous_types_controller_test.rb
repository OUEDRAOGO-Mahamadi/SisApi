require "test_helper"

class ExpertSousTypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @expert_sous_type = expert_sous_types(:one)
  end

  test "should get index" do
    get expert_sous_types_url
    assert_response :success
  end

  test "should get new" do
    get new_expert_sous_type_url
    assert_response :success
  end

  test "should create expert_sous_type" do
    assert_difference('ExpertSousType.count') do
      post expert_sous_types_url, params: { expert_sous_type: { sous_type_expert_id: @expert_sous_type.sous_type_expert_id, utilisateur_id: @expert_sous_type.utilisateur_id } }
    end

    assert_redirected_to expert_sous_type_url(ExpertSousType.last)
  end

  test "should show expert_sous_type" do
    get expert_sous_type_url(@expert_sous_type)
    assert_response :success
  end

  test "should get edit" do
    get edit_expert_sous_type_url(@expert_sous_type)
    assert_response :success
  end

  test "should update expert_sous_type" do
    patch expert_sous_type_url(@expert_sous_type), params: { expert_sous_type: { sous_type_expert_id: @expert_sous_type.sous_type_expert_id, utilisateur_id: @expert_sous_type.utilisateur_id } }
    assert_redirected_to expert_sous_type_url(@expert_sous_type)
  end

  test "should destroy expert_sous_type" do
    assert_difference('ExpertSousType.count', -1) do
      delete expert_sous_type_url(@expert_sous_type)
    end

    assert_redirected_to expert_sous_types_url
  end
end
