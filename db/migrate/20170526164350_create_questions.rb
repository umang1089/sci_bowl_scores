class CreateQuestions < ActiveRecord::Migration[5.0]
  def change
    create_table :questions do |t|
      t.integer :game_id
      t.integer :team_a_tossup
      t.integer :team_a_penalty
      t.integer :team_a_bonus
      t.integer :team_b_tossup
      t.integer :team_b_penalty
      t.integer :team_b_bonus

      t.timestamps

    end
  end
end
