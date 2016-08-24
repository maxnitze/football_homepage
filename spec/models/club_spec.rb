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
  it "has a valid factory" do
    expect(create :club).to be_valid
  end
end
