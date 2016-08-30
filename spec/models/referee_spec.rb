# == Schema Information
#
# Table name: referees
#
#  id         :integer          not null, primary key
#  surname    :string
#  givenname  :string
#  club_id    :integer
#  created_at :datetime
#  updated_at :datetime
#  birthday   :datetime
#

# spec/models/referee_spec.rb
require 'rails_helper'

RSpec.describe Referee, type: :model do
  it 'has a valid factory' do
    expect(build :referee).to be_valid
  end

  it 'is valid without a birthday' do
    expect(build :referee).to be_valid
  end

  it 'is not valid without a name' do
    expect(build :referee, surname: nil, givenname: nil).to_not be_valid
    expect(build :referee, surname: nil).to_not be_valid
    expect(build :referee, givenname: nil).to_not be_valid
  end

  it 'is not valid without a club' do
    expect(build :referee, club: nil).to_not be_valid
  end
end
