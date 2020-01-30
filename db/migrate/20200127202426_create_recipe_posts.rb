class CreateRecipePosts < ActiveRecord::Migration[6.0]
  def change
    create_table :recipe_posts do |t|
      t.integer :postId
      t.string :name
      t.string :ingredients
      t.string :instructions

      t.timestamps
    end
  end
end
