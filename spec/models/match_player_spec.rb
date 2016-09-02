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

# spec/models/match_player_spec.rb
require 'rails_helper'

RSpec.describe MatchPlayer, type: :model do
  it 'has a valid factory' do
    expect(build :match_player).to be_valid
  end

  it 'is not valid without a match' do
    expect(build :match_player, match: nil).to_not be_valid
  end

  it 'is not valid without a player' do
    expect(build :match_player, player: nil).to_not be_valid
  end

  it 'is not valid without a position' do
    expect(build :match_player, position: nil).to_not be_valid
  end

  it 'is not valid without a backnumber less or equal than zero' do
    expect(build :match_player, backnumber: 0).to_not be_valid
    expect(build :match_player, backnumber: -1).to_not be_valid
  end
end
