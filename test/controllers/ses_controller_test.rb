require "test_helper"

class SesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @se = ses(:one)
  end

  test "should get index" do
    get ses_url
    assert_response :success
  end

  test "should get new" do
    get new_se_url
    assert_response :success
  end

  test "should create se" do
    assert_difference('Sis.count') do
      post ses_url, params: { se: { condition: @se.condition, description: @se.description } }
    end

    assert_redirected_to se_url(Sis.last)
  end

  test "should show se" do
    get se_url(@se)
    assert_response :success
  end

  test "should get edit" do
    get edit_se_url(@se)
    assert_response :success
  end

  test "should update se" do
    patch se_url(@se), params: { se: { condition: @se.condition, description: @se.description } }
    assert_redirected_to se_url(@se)
  end

  test "should destroy se" do
    assert_difference('Sis.count', -1) do
      delete se_url(@se)
    end

    assert_redirected_to ses_url
  end
end
