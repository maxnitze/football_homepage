# == Schema Information
#
# Table name: referees
#
#  id         :integer          not null, primary key
#  surname    :string
#  givenname  :string
#  clubid     :integer
#  created_at :datetime
#  updated_at :datetime
#

class Referee < ActiveRecord::Base
  belongs_to :club
  has_many :matches
end
