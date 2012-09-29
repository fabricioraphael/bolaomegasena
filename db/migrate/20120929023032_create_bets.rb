class CreateBets < ActiveRecord::Migration
  def change
    create_table :bets do |t|
      t.integer :user_id
      t.string :numbers
      t.date :bet_date
      t.boolean :approved

      t.timestamps
    end
  end
end
