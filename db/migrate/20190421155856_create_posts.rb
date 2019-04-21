class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :description
      t.references :user, foreign_key: true

      add_index :users, :user_id

      t.timestamps
    end
  end
end