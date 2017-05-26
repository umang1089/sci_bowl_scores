class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.integer :school_id
      t.integer :tournament_id
      t.string :player_1_name
      t.string :player_2_name
      t.string :player_3_name
      t.string :player_4_name
      t.string :player_5_name

      t.timestamps

    end
  end
end
