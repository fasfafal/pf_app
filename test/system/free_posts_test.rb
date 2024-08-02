require "application_system_test_case"

class FreePostsTest < ApplicationSystemTestCase
  setup do
    @free_post = free_posts(:one)
  end

  test "visiting the index" do
    visit free_posts_url
    assert_selector "h1", text: "Free posts"
  end

  test "should create free post" do
    visit free_posts_url
    click_on "New free post"

    fill_in "Body", with: @free_post.body
    fill_in "Created at", with: @free_post.created_at
    fill_in "Icon", with: @free_post.icon
    fill_in "Title", with: @free_post.title
    fill_in "Updated at", with: @free_post.updated_at
    fill_in "User", with: @free_post.user_id
    click_on "Create Free post"

    assert_text "Free post was successfully created"
    click_on "Back"
  end

  test "should update Free post" do
    visit free_post_url(@free_post)
    click_on "Edit this free post", match: :first

    fill_in "Body", with: @free_post.body
    fill_in "Created at", with: @free_post.created_at
    fill_in "Icon", with: @free_post.icon
    fill_in "Title", with: @free_post.title
    fill_in "Updated at", with: @free_post.updated_at
    fill_in "User", with: @free_post.user_id
    click_on "Update Free post"

    assert_text "Free post was successfully updated"
    click_on "Back"
  end

  test "should destroy Free post" do
    visit free_post_url(@free_post)
    click_on "Destroy this free post", match: :first

    assert_text "Free post was successfully destroyed"
  end
end
