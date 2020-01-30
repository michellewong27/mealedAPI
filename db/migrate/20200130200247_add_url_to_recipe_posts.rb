class AddUrlToRecipePosts < ActiveRecord::Migration[6.0]
  def change
    add_column :recipe_posts, :url, :string
  end
end
