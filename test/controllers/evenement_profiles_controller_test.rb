require "test_helper"

class EvenementProfilesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @evenement_profile = evenement_profiles(:one)
  end

  test "should get index" do
    get evenement_profiles_url
    assert_response :success
  end

  test "should get new" do
    get new_evenement_profile_url
    assert_response :success
  end

  test "should create evenement_profile" do
    assert_difference('EvenementProfile.count') do
      post evenement_profiles_url, params: { evenement_profile: { evenement_id: @evenement_profile.evenement_id, profile_id: @evenement_profile.profile_id } }
    end

    assert_redirected_to evenement_profile_url(EvenementProfile.last)
  end

  test "should show evenement_profile" do
    get evenement_profile_url(@evenement_profile)
    assert_response :success
  end

  test "should get edit" do
    get edit_evenement_profile_url(@evenement_profile)
    assert_response :success
  end

  test "should update evenement_profile" do
    patch evenement_profile_url(@evenement_profile), params: { evenement_profile: { evenement_id: @evenement_profile.evenement_id, profile_id: @evenement_profile.profile_id } }
    assert_redirected_to evenement_profile_url(@evenement_profile)
  end

  test "should destroy evenement_profile" do
    assert_difference('EvenementProfile.count', -1) do
      delete evenement_profile_url(@evenement_profile)
    end

    assert_redirected_to evenement_profiles_url
  end
end
