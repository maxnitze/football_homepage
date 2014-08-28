# == Schema Information
#
# Table name: clubs
#
#  id                :integer          not null, primary key
#  name              :string(255)
#  officestreet      :string(255)
#  officepostalcode  :string(255)
#  officetown        :string(255)
#  stadiumstreet     :string(255)
#  stadiumpostalcode :string(255)
#  stadiumtown       :string(255)
#  homepage          :string(255)
#  crest             :string(255)
#  description       :string(255)
#  created_at        :datetime
#  updated_at        :datetime
#

class Club < ActiveRecord::Base
  has_and_belongs_to_many :teams
  has_many :referees
end
