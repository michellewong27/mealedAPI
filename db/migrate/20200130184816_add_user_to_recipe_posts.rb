class AddUserToRecipePosts < ActiveRecord::Migration[6.0]
  def change
    add_column :recipe_posts, :userId, :integer
  end
end
