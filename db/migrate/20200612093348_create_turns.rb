class CreateTurns < ActiveRecord::Migration[6.0]
  def change
    create_table :turns do |t|
      t.integer :turn_no
      t.integer :expected
      t.integer :actual
      t.references :player, null: false, foreign_key: true
      t.references :player_game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
