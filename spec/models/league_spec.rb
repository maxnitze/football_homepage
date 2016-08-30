# == Schema Information
#
# Table name: leagues
#
#  id         :integer          not null, primary key
#  name       :string
#  start      :datetime
#  end        :datetime
#  class_id   :integer
#  iscup      :boolean
#  isfemale   :boolean
#  noreferee  :boolean
#  created_at :datetime
#  updated_at :datetime
#

# spec/models/league_spec.rb
require 'rails_helper'

RSpec.describe League, type: :model do
  it 'has a valid factory' do
    expect(create :league).to be_valid
    expect(create :league, :further_information).to be_valid
  end

  it 'is not valid without a name' do
    expect(build :league, name: nil).to_not be_valid
    expect(build :league, :further_information, name: nil).to_not be_valid
  end

  it 'is not valid without a start and end' do
    expect(build :league, start: nil, end: nil).to_not be_valid
    expect(build :league, :further_information, start: nil, end: nil).to_not be_valid
  end

  it 'is not valid without a class' do
    expect(build :league, class_id: nil).to_not be_valid
    expect(build :league, :further_information, class_id: nil).to_not be_valid
  end

  it 'is not valid without a iscup value' do
    expect(build :league, iscup: nil).to_not be_valid
    expect(build :league, :further_information, iscup: nil).to_not be_valid
  end

  it 'is not valid without a isfemale value' do
    expect(build :league, isfemale: nil).to_not be_valid
    expect(build :league, :further_information, isfemale: nil).to_not be_valid
  end

  it 'is not valid without a noreferee value' do
    expect(build :league, noreferee: nil).to_not be_valid
    expect(build :league, :further_information, noreferee: nil).to_not be_valid
  end
end
