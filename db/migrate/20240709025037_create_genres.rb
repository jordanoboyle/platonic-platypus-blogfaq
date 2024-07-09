class CreateGenres < ActiveRecord::Migration[7.1]
  def change
    create_table :genres do |t|
      t.string :type
      t.string :decription
      t.string :example

      t.timestamps
    end
  end
end
