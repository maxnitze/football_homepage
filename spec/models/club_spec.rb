# == Schema Information
#
# Table name: clubs
#
#  id                :integer          not null, primary key
#  name              :string
#  officestreet      :string
#  officepostalcode  :string
#  officetown        :string
#  stadiumstreet     :string
#  stadiumpostalcode :string
#  stadiumtown       :string
#  homepage          :string
#  crest             :string
#  description       :string
#  created_at        :datetime
#  updated_at        :datetime
#

# spec/models/club_spec.rb
require 'rails_helper'

RSpec.describe Club, type: :model do
  it 'has a valid factory' do
    expect(build :club).to be_valid
  end

  it 'is valid without an office address' do
    expect(build :club, officestreet: nil, officepostalcode: nil, officetown: nil).to be_valid
  end

  it 'is valid without a stadium address' do
    expect(build :club, stadiumstreet: nil, stadiumpostalcode: nil, stadiumtown: nil).to be_valid
  end

  it 'is valid without a homepage' do
    expect(build :club, homepage: nil).to be_valid
  end

  it 'is valid without a crest' do
    expect(build :club, crest: nil).to be_valid
  end

  it 'is valid without a description' do
    expect(build :club, description: nil).to be_valid
  end

  it 'is not valid without a name' do
    expect(build :club, name: nil).to_not be_valid
  end
end
