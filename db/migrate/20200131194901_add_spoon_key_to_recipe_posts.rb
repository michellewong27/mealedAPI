class AddSpoonKeyToRecipePosts < ActiveRecord::Migration[6.0]
  def change
    add_column :recipe_posts, :spoonKey, :integer
  end
end
