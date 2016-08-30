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

require 'rails_helper'

RSpec.describe Club, type: :model do
  it 'has a valid factory' do
    expect(create :club).to be_valid
    expect(create :club, :further_information).to be_valid
  end

  it 'is valid without anything but a name' do
    expect(build :club).to be_valid
  end

  it 'is not valid without a name' do
    expect(build :club, name: nil).to_not be_valid
    expect(build :club, :further_information, name: nil).to_not be_valid
  end
end
