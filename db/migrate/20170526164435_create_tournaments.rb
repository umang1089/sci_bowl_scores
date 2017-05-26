class CreateTournaments < ActiveRecord::Migration[5.0]
  def change
    create_table :tournaments do |t|
      t.string :name
      t.string :location
      t.string :date

      t.timestamps

    end
  end
end
