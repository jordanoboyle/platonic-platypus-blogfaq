class CorrectColumnNameInGenre < ActiveRecord::Migration[7.1]
  def change
    rename_column :genres, :decription, :description
  end
end
