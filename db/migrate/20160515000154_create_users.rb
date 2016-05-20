class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :first_name, null: false
      t.string :username, null: false
      t.string :email, null: false
      t.string :password_digest, null: false
      t.boolean :account_manager, null: false
      t.string :photo_url, null: false
      t.timestamps null: false
    end
  end
end
