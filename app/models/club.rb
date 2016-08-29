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

class Club < ActiveRecord::Base
  validates_presence_of :name, message: I18n.t('models.club.name.mandatory')

  has_and_belongs_to_many :teams
  has_many :referees
end
