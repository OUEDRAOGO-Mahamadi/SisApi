require "test_helper"

class EvenementLanguesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @evenement_langue = evenement_langues(:one)
  end

  test "should get index" do
    get evenement_langues_url
    assert_response :success
  end

  test "should get new" do
    get new_evenement_langue_url
    assert_response :success
  end

  test "should create evenement_langue" do
    assert_difference('EvenementLangue.count') do
      post evenement_langues_url, params: { evenement_langue: { evenement_id: @evenement_langue.evenement_id, langue_id: @evenement_langue.langue_id } }
    end

    assert_redirected_to evenement_langue_url(EvenementLangue.last)
  end

  test "should show evenement_langue" do
    get evenement_langue_url(@evenement_langue)
    assert_response :success
  end

  test "should get edit" do
    get edit_evenement_langue_url(@evenement_langue)
    assert_response :success
  end

  test "should update evenement_langue" do
    patch evenement_langue_url(@evenement_langue), params: { evenement_langue: { evenement_id: @evenement_langue.evenement_id, langue_id: @evenement_langue.langue_id } }
    assert_redirected_to evenement_langue_url(@evenement_langue)
  end

  test "should destroy evenement_langue" do
    assert_difference('EvenementLangue.count', -1) do
      delete evenement_langue_url(@evenement_langue)
    end

    assert_redirected_to evenement_langues_url
  end
end
