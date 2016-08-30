# == Schema Information
#
# Table name: players
#
#  id                    :integer          not null, primary key
#  surname               :string
#  givenname             :string
#  birthday              :datetime
#  position              :integer
#  leg                   :integer
#  created_at            :datetime
#  updated_at            :datetime
#  portrait_file_name    :string
#  portrait_content_type :string
#  portrait_file_size    :integer
#  portrait_updated_at   :datetime
#

# spec/models/player_spec.rb
require 'rails_helper'

RSpec.describe Player, type: :model do
  it 'has a valid factory' do
    expect(build :player).to be_valid
    expect(build :player, :further_information).to be_valid
  end

  it 'is valid without an avatar' do
    expect(build :player).to be_valid
  end

  it 'is not valid without a name' do
    expect(build :player, surname: nil, givenname: nil).to_not be_valid
    expect(build :player, surname: nil).to_not be_valid
    expect(build :player, givenname: nil).to_not be_valid
    expect(build :player, :further_information, surname: nil, givenname: nil).to_not be_valid
    expect(build :player, :further_information, surname: nil).to_not be_valid
    expect(build :player, :further_information, givenname: nil).to_not be_valid
  end

  it 'is not valid without a birthday' do
    expect(build :player, birthday: nil).to_not be_valid
    expect(build :player, :further_information, birthday: nil).to_not be_valid
  end

  it 'is not valid without a position value' do
    expect(build :player, position: nil).to_not be_valid
    expect(build :player, :further_information, position: nil).to_not be_valid
  end

  it 'is not valid without a leg value' do
    expect(build :player, leg: nil).to_not be_valid
    expect(build :player, :further_information, leg: nil).to_not be_valid
  end
end
