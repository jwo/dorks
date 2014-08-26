class CreatePlayers < ActiveRecord::Migration
  def change
    create_table :players do |t|
      t.integer :rank
      t.string :firstname
      t.string :lastname
      t.string :team
      t.decimal :total
      t.decimal :ppg
      t.string :position
      t.boolean :available, default: true
      t.boolean :on_team, default: false

      t.timestamps
    end
  end
end
