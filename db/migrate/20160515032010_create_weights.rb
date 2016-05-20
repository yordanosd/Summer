class CreateWeights < ActiveRecord::Migration
  def change
    create_table :weights do |t|
      t.float :weight, null: false
      t.datetime :record_date, null: false
      t.integer :user_id, null: false
      t.timestamps null: false
    end
  end
end
