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

class Referee < ActiveRecord::Base
  belongs_to :club
  has_many :matches

  validates_presence_of :surname, :givenname, :club
end
