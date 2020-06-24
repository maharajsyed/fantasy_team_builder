class CreatePlayersTable < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :player_name
      t.string :player_position
      t.integer :price
    end
  end
end