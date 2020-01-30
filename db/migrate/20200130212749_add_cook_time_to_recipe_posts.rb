class AddCookTimeToRecipePosts < ActiveRecord::Migration[6.0]
  def change
    add_column :recipe_posts, :cookTime, :string
  end
end
