require 'test_helper'

class PollOptionsSetsControllerTest < ActionController::TestCase
  setup do
    @poll_options_set = poll_options_sets(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:poll_options_sets)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create poll_options_set" do
    assert_difference('PollOptionsSet.count') do
      post :create, poll_options_set: { num_options: @poll_options_set.num_options, options: @poll_options_set.options, set_type: @poll_options_set.set_type }
    end

    assert_redirected_to poll_options_set_path(assigns(:poll_options_set))
  end

  test "should show poll_options_set" do
    get :show, id: @poll_options_set
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @poll_options_set
    assert_response :success
  end

  test "should update poll_options_set" do
    put :update, id: @poll_options_set, poll_options_set: { num_options: @poll_options_set.num_options, options: @poll_options_set.options, set_type: @poll_options_set.set_type }
    assert_redirected_to poll_options_set_path(assigns(:poll_options_set))
  end

  test "should destroy poll_options_set" do
    assert_difference('PollOptionsSet.count', -1) do
      delete :destroy, id: @poll_options_set
    end

    assert_redirected_to poll_options_sets_path
  end
end
