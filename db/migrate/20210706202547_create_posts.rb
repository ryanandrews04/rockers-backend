class CreatePosts < ActiveRecord::Migration[6.1]
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.string :text
      t.string :title
      t.string :image

      t.timestamps
    end
  end
end
