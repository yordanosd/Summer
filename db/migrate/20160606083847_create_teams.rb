class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :team_id, null: false
      t.timestamps null: false
    end
  end
end
