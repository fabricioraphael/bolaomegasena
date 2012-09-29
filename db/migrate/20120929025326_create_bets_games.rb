class CreateBetsGames < ActiveRecord::Migration
  def up
    create_table :bets_games, :id => false do |t|
      t.references :bet
      t.references :game
    end
  end

  def down
    drop_table :categoria_posts
  end
end