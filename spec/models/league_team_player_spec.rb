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

# spec/models/league_team_spec.rb
require 'rails_helper'

RSpec.describe LeagueTeamPlayer, type: :model do
  it 'has a valid factory' do
    expect(build :league_team_player).to be_valid
  end

  it 'is not valid without a team' do
    expect(build :league_team_player, team: nil).to_not be_valid
  end

  it 'is not valid without a league' do
    expect(build :league_team_player, league: nil).to_not be_valid
  end

  it 'is not valid without a player' do
    expect(build :league_team_player, player: nil).to_not be_valid
  end

  it 'is not valid without a position' do
    expect(build :league_team_player, position: nil).to_not be_valid
  end

  it 'is not valid without an ex value' do
    expect(build :league_team_player, ex: nil).to_not be_valid
  end

  it 'is valid without a picture' do
    expect(build :league_team_player, picture: nil).to be_valid
  end
end
