require "test_helper"

class FreePostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @free_post = free_posts(:one)
  end

  test "should get index" do
    get free_posts_url
    assert_response :success
  end

  test "should get new" do
    get new_free_post_url
    assert_response :success
  end

  test "should create free_post" do
    assert_difference("FreePost.count") do
      post free_posts_url, params: { free_post: { body: @free_post.body, created_at: @free_post.created_at, icon: @free_post.icon, title: @free_post.title, updated_at: @free_post.updated_at, user_id: @free_post.user_id } }
    end

    assert_redirected_to free_post_url(FreePost.last)
  end

  test "should show free_post" do
    get free_post_url(@free_post)
    assert_response :success
  end

  test "should get edit" do
    get edit_free_post_url(@free_post)
    assert_response :success
  end

  test "should update free_post" do
    patch free_post_url(@free_post), params: { free_post: { body: @free_post.body, created_at: @free_post.created_at, icon: @free_post.icon, title: @free_post.title, updated_at: @free_post.updated_at, user_id: @free_post.user_id } }
    assert_redirected_to free_post_url(@free_post)
  end

  test "should destroy free_post" do
    assert_difference("FreePost.count", -1) do
      delete free_post_url(@free_post)
    end

    assert_redirected_to free_posts_url
  end
end
