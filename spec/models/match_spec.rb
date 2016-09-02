# == Schema Information
#
# Table name: matches
#
#  id             :integer          not null, primary key
#  league_id      :integer
#  matchday       :integer
#  home_id        :integer
#  guest_id       :integer
#  start          :datetime
#  end            :datetime
#  goals_home     :integer
#  goals_guest    :integer
#  goals_home_ht  :integer
#  goals_guest_ht :integer
#  referee_id     :integer
#  assistant1_id  :integer
#  assistant2_id  :integer
#  overtime       :boolean
#  penalty        :boolean
#  hncompete      :boolean
#  gncompete      :boolean
#  noreferee      :boolean
#  canceled       :boolean
#  enabled        :boolean
#  created_at     :datetime
#  updated_at     :datetime
#

# spec/models/match_spec.rb
require 'rails_helper'

RSpec.describe Match, type: :model do
  it 'has a valid factory' do
    expect(build :match).to be_valid
  end

  it 'is not valid without a league' do
    expect(build :match, league: nil).to_not be_valid
  end

  it 'is not valid without a matchday' do
    expect(build :match, matchday: nil).to_not be_valid
  end

  it 'is not valid without a home team' do
    expect(build :match, home: nil).to_not be_valid
  end

  it 'is not valid without a guest team' do
    expect(build :match, guest: nil).to_not be_valid
  end

  it 'is not valid without a matchday' do
    expect(build :match, matchday: nil).to_not be_valid
  end

  it 'is not valid without a start and end' do
    expect(build :match, start: nil, end: nil).to_not be_valid
    expect(build :match, start: nil).to_not be_valid
    expect(build :match, end: nil).to_not be_valid
  end

  it 'is not valid without goals given' do
    expect(build :match, goals_home: nil, goals_guest: nil).to_not be_valid
    expect(build :match, goals_home: nil).to_not be_valid
    expect(build :match, goals_guest: nil).to_not be_valid
  end

  it 'is not valid without halftime goals given' do
    expect(build :match, goals_home_ht: nil, goals_guest_ht: nil).to_not be_valid
    expect(build :match, goals_home_ht: nil).to_not be_valid
    expect(build :match, goals_guest_ht: nil).to_not be_valid
  end

  it 'is not valid with halftime goals higher than fulltime goals' do
    expect(build :match, goals_home: 0, goals_home_ht: 1).to_not be_valid
    expect(build :match, goals_guest: 0, goals_guest_ht: 1).to_not be_valid
  end

  it 'is not valid with negative goals' do
    expect(build :match, goals_home: -1).to_not be_valid
    expect(build :match, goals_guest: -1).to_not be_valid
    expect(build :match, goals_home_ht: -1).to_not be_valid
    expect(build :match, goals_guest_ht: -1).to_not be_valid
  end

  it 'is not valid without a matchday' do
    expect(build :match, matchday: nil).to_not be_valid
  end

  it 'is valid without a referee and assistants' do
    expect(build :match, referee: nil, assistant1: nil, assistant2: nil).to be_valid
  end

  it 'is not valid without a referee but assistants' do
    expect(build :match, referee: nil).to_not be_valid
  end

  it 'is not valid with only one assistant' do
    expect(build :match, assistant1: nil).to_not be_valid
    expect(build :match, assistant2: nil).to_not be_valid
  end

  %w{ overtime penalty hncompete gncompete noreferee canceled enabled }.each do |b|
    eval %{
      it "is not valid without a '#{b}' value" do
        expect(build :match, #{b}: nil).to_not be_valid
      end
    }
  end
end
