class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.integer :count
      t.integer :bets_numbers
      t.date :game_date
      t.integer :contest_number
      t.float :award
      t.string :numbers_drawn
      t.boolean :success
      t.text :notes

      t.timestamps
    end
  end
end
