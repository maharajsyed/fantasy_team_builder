class CreateDraftlistsTable < ActiveRecord::Migration[6.0]
  def change
    create_table :draftlists do |t|
      t.integer :team_id
      t.integer :player_id
    end
  end
end
