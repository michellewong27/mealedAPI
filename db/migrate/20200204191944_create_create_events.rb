class CreateCreateEvents < ActiveRecord::Migration[6.0]
  def change
    create_table :create_events do |t|
      t.string :title
      t.boolean :allDay
      t.string :start
      t.string :end
      t.integer :postId

      t.timestamps
    end
  end
end
