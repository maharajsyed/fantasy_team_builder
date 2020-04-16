class CreateTeamsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :team_name
      t.integer :user_id
      t.integer :budget
      t.integer :league_id
    end
  end
end
