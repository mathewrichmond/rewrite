require 'test_helper'

class InsertionsControllerTest < ActionController::TestCase
  setup do
    @insertion = insertions(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:insertions)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create insertion" do
    assert_difference('Insertion.count') do
      post :create, insertion: { content: @insertion.content, position: @insertion.position, review_id: @insertion.review_id }
    end

    assert_redirected_to insertion_path(assigns(:insertion))
  end

  test "should show insertion" do
    get :show, id: @insertion
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @insertion
    assert_response :success
  end

  test "should update insertion" do
    patch :update, id: @insertion, insertion: { content: @insertion.content, position: @insertion.position, review_id: @insertion.review_id }
    assert_redirected_to insertion_path(assigns(:insertion))
  end

  test "should destroy insertion" do
    assert_difference('Insertion.count', -1) do
      delete :destroy, id: @insertion
    end

    assert_redirected_to insertions_path
  end
end
