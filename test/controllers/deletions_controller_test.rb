require 'test_helper'

class DeletionsControllerTest < ActionController::TestCase
  setup do
    @deletion = deletions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:deletions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create deletion" do
    assert_difference('Deletion.count') do
      post :create, deletion: { offset: @deletion.offset, position: @deletion.position, review_id: @deletion.review_id }
    end

    assert_redirected_to deletion_path(assigns(:deletion))
  end

  test "should show deletion" do
    get :show, id: @deletion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @deletion
    assert_response :success
  end

  test "should update deletion" do
    patch :update, id: @deletion, deletion: { offset: @deletion.offset, position: @deletion.position, review_id: @deletion.review_id }
    assert_redirected_to deletion_path(assigns(:deletion))
  end

  test "should destroy deletion" do
    assert_difference('Deletion.count', -1) do
      delete :destroy, id: @deletion
    end

    assert_redirected_to deletions_path
  end
end
