class Bet < ActiveRecord::Base
  has_and_belongs_to_many :games
  belongs_to :user
  
  # bet = Bet.create(:numbers => "05-23-45-55-12", :bet_date => (DateTime.now + 1.days).to_date)
  # game = Game.create(:count => 1, :bets_numbers => 500, :game_date => (DateTime.now + 1.days).to_date, :award => 200000000)
  # user = User.create(:name => "faber", :email => "fabricioraphael.b@gmail.com", :password => '123456', :password_confirmation => '123456')
end
