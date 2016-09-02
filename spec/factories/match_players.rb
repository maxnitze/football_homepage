# == Schema Information
#
# Table name: match_players
#
#  id         :integer          not null, primary key
#  match_id   :integer
#  player_id  :integer
#  position   :integer
#  backnumber :integer
#  created_at :datetime
#  updated_at :datetime
#

# spec/factories/match_players.rb
FactoryGirl.define do
  factory :match_player do |mp|
    mp.match
    mp.player
    mp.position       { FIELD_POSITIONS.sample }
    mp.backnumber     { Faker::Number.between(1, 100) }
  end
end
