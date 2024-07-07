class CreateUsers < ActiveRecord::Migration[7.1]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :username
      t.string :password_digest
      t.boolean :admin
      t.string :prof_image
      t.string :about_me

      t.timestamps
    end
  end
end
