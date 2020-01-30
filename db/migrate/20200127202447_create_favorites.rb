class CreateFavorites < ActiveRecord::Migration[6.0]
  def change
    create_table :favorites do |t|
      t.integer :userId
      t.integer :postId

      t.timestamps
    end
  end
end
