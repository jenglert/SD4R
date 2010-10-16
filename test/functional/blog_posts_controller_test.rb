require 'test_helper'

class BlogPostsControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:blog_posts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create blog_post" do
    assert_difference('BlogPost.count') do
      post :create, :blog_post => { }
    end

    assert_redirected_to blog_post_path(assigns(:blog_post))
  end

  test "should show blog_post" do
    get :show, :id => blog_posts(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => blog_posts(:one).to_param
    assert_response :success
  end

  test "should update blog_post" do
    put :update, :id => blog_posts(:one).to_param, :blog_post => { }
    assert_redirected_to blog_post_path(assigns(:blog_post))
  end

  test "should destroy blog_post" do
    assert_difference('BlogPost.count', -1) do
      delete :destroy, :id => blog_posts(:one).to_param
    end

    assert_redirected_to blog_posts_path
  end
end
