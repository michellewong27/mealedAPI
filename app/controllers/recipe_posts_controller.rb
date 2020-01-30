class RecipePostsController < ApplicationController
  before_action :set_recipe_post, only: [:show, :update, :destroy]

  # GET /recipe_posts
  def index
    @recipe_posts = RecipePost.all

    render json: @recipe_posts
  end

  # GET /recipe_posts/1
  def show
    render json: @recipe_post
  end

  # POST /recipe_posts
  def create
    @recipe_post = RecipePost.new(recipe_post_params)
    if @recipe_post.save
      render json: @recipe_post, status: :ok, location: @recipe_post
    else
      render json: @recipe_post.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /recipe_posts/1
  def update
    if @recipe_post.update(recipe_post_params)
      render json: @recipe_post
    else
      render json: @recipe_post.errors, status: :unprocessable_entity
    end
  end

  # DELETE /recipe_posts/1
  def destroy
    @recipe_post.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_recipe_post
      @recipe_post = RecipePost.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def recipe_post_params
      params.require(:recipe_post).permit(:name, :ingredients, :instructions, :url)
    end
end
