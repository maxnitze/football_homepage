# == Schema Information
#
# Table name: league_teams
#
#  id                   :integer          not null, primary key
#  league_id            :integer
#  team_id              :integer
#  picturecaption       :string
#  squadleagueteam_id   :integer
#  unsubscribed         :boolean
#  wincount             :integer
#  losecount            :integer
#  remiscount           :integer
#  goalsshot            :integer
#  goalsgot             :integer
#  created_at           :datetime
#  updated_at           :datetime
#  picture_file_name    :string
#  picture_content_type :string
#  picture_file_size    :integer
#  picture_updated_at   :datetime
#

# spec/models/league_team_spec.rb
require 'rails_helper'

RSpec.describe LeagueTeam, type: :model do
  it 'has a valid factory' do
    expect(build :league_team).to be_valid
    expect(build :league_team_with_inherited_squad).to be_valid
  end

  it 'is not valid without a league' do
    expect(build :league_team, league: nil).to_not be_valid
  end

  it 'is not valid without a team' do
    expect(build :league_team, team: nil).to_not be_valid
  end

  it 'is valid without a squadleagueteam' do
    expect(build :league_team, squadleagueteam: nil).to be_valid
  end

  it 'is not valid with a recursive squadleague team' do
    league_team_1 = create :league_team
    league_team_1.squadleagueteam = league_team_1
    expect(league_team_1).to_not be_valid

    league_team_2 = create :league_team
    league_team_1.squadleagueteam = league_team_2
    league_team_2.squadleagueteam = league_team_1
    expect(league_team_1).to_not be_valid
    expect(league_team_2).to_not be_valid

    league_team_3 = create :league_team
    league_team_1.squadleagueteam = league_team_2
    league_team_2.squadleagueteam = league_team_3
    league_team_3.squadleagueteam = league_team_1
    expect(league_team_1).to_not be_valid
    expect(league_team_2).to_not be_valid
    expect(league_team_3).to_not be_valid
  end

  it 'is not valid without result counts' do
    expect(build :league_team, wincount: nil).to_not be_valid
    expect(build :league_team, losecount: nil).to_not be_valid
    expect(build :league_team, remiscount: nil).to_not be_valid
  end

  it 'is not valid with negative result counts' do
    expect(build :league_team, wincount: -1).to_not be_valid
    expect(build :league_team, losecount: -1).to_not be_valid
    expect(build :league_team, remiscount: -1).to_not be_valid
  end

  it 'is not valid without goals values' do
    expect(build :league_team, goalsshot: nil).to_not be_valid
    expect(build :league_team, goalsgot: nil).to_not be_valid
  end

  it 'is not valid with negative goals values' do
    expect(build :league_team, goalsshot: -1).to_not be_valid
    expect(build :league_team, goalsgot: -1).to_not be_valid
  end

  it 'is valid without a picture' do
    expect(build :league_team, picture_file_name: nil, picture_content_type: nil,
      picture_file_size: nil, picture_updated_at: nil).to be_valid
  end

  it 'is not valid with a non-image picture content type' do
    expect(build :league_team, picture_content_type: 'text/plaintext').to_not be_valid
  end

  it 'is not valid without an unsubscribed value' do
    expect(build :league_team, unsubscribed: nil).to_not be_valid
  end

  it 'supplies a list of possible squadleagueteams' do
    team = create :team
    league_team = create :league_team, team: team

    # first possible league team
    ltp1_start = league_team.league.start + (Faker::Boolean.boolean ? 1 : -1) * Faker::Number.between(0, 11).months
    league_possible_1 = create :league, start: ltp1_start, end: (ltp1_start + 1.year)
    league_team_possible_1 = create :league_team, team: team, league: league_possible_1
    # second possible league team
    ltp2_start = league_team.league.start + (Faker::Boolean.boolean ? 1 : -1) * Faker::Number.between(0, 11).months
    league_possible_2 = create :league, start: ltp2_start, end: (ltp2_start + 1.year)
    league_team_possible_2 = create :league_team, team: team, league: league_possible_2

    # first not possible league team
    lti1_start = league_team.league.start + (Faker::Boolean.boolean ? 1 : -1) * Faker::Number.between(1, 20).years
    league_impossible_1 = create :league, start: lti1_start, end: (lti1_start + 1.year)
    league_team_impossible_1 = create :league_team, team: team, league: league_impossible_1
    # second not possible league team
    lti2_start = league_team.league.start + (Faker::Boolean.boolean ? 1 : -1) * Faker::Number.between(1, 20).years
    league_impossible_2 = create :league, start: lti2_start, end: (lti2_start + 1.year)
    league_team_impossible_2 = create :league_team, team: team, league: league_impossible_2

    possible_squadleagueteams = league_team.get_possible_squadleagueteams
    expect(possible_squadleagueteams).to include(league_team_possible_1, league_team_possible_2)
    expect(possible_squadleagueteams).to_not include(league_team_impossible_1, league_team_impossible_2)
  end
end
