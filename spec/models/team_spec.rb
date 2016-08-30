# == Schema Information
#
# Table name: teams
#
#  id           :integer          not null, primary key
#  name         :string
#  ishometeam   :boolean
#  hometeamname :string
#  isfemale     :boolean
#  class_id     :integer
#  created_at   :datetime
#  updated_at   :datetime
#

# spec/models/team_spec.rb
require 'rails_helper'

RSpec.describe Team, type: :model do
  it 'has a valid factory' do
    expect(build :team).to be_valid
  end

  it 'is valid when is not hometeam' do
    expect(build :team, ishometeam: false).to be_valid
  end

  it 'is not valid without a name' do
    expect(build :team, name: nil).to_not be_valid
  end

  it 'is not valid when is hometeam but has no hometeam name' do
    expect(build :team, ishometeam: true, hometeamname: nil).to_not be_valid
  end

  it 'is not valid without a class' do
    expect(build :team, class_id: nil).to_not be_valid
  end

  it 'is not valid without an ishometeam value' do
    expect(build :team, ishometeam: nil).to_not be_valid
  end

  it 'is not valid without a isfemale value' do
    expect(build :team, isfemale: nil).to_not be_valid
  end
end
