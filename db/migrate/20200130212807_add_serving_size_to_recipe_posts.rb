class AddServingSizeToRecipePosts < ActiveRecord::Migration[6.0]
  def change
    add_column :recipe_posts, :servingSize, :string
  end
end
