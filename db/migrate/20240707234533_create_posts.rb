class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :subtitle
      t.string :game_title
      t.string :body
      t.string :image_url
      t.integer :user_id
      t.integer :genre_id

      t.timestamps
    end
  end
end
