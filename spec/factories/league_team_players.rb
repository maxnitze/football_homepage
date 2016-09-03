# == Schema Information
#
# Table name: league_team_players
#
#  id         :integer          not null, primary key
#  team_id    :integer
#  league_id  :integer
#  player_id  :integer
#  position   :integer
#  ex         :boolean
#  picture    :string
#  created_at :datetime
#  updated_at :datetime
#

# spec/factories/league_team_players.rb
FactoryGirl.define do
  factory :league_team_player do |ltp|
    ltp.league
    ltp.team
    ltp.player
    ltp.position            { FIELD_POSITIONS.sample }
    ltp.ex                  { Faker::Boolean.boolean }
    ltp.picture             { Faker::Avatar.image }
  end
end
