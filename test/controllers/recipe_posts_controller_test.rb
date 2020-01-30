require 'test_helper'

class RecipePostsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @recipe_post = recipe_posts(:one)
  end

  test "should get index" do
    get recipe_posts_url, as: :json
    assert_response :success
  end

  test "should create recipe_post" do
    assert_difference('RecipePost.count') do
      post recipe_posts_url, params: { recipe_post: { ingredients: @recipe_post.ingredients, instructions: @recipe_post.instructions, name: @recipe_post.name, postId: @recipe_post.postId } }, as: :json
    end

    assert_response 201
  end

  test "should show recipe_post" do
    get recipe_post_url(@recipe_post), as: :json
    assert_response :success
  end

  test "should update recipe_post" do
    patch recipe_post_url(@recipe_post), params: { recipe_post: { ingredients: @recipe_post.ingredients, instructions: @recipe_post.instructions, name: @recipe_post.name, postId: @recipe_post.postId } }, as: :json
    assert_response 200
  end

  test "should destroy recipe_post" do
    assert_difference('RecipePost.count', -1) do
      delete recipe_post_url(@recipe_post), as: :json
    end

    assert_response 204
  end
end
