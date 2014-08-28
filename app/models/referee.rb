# == Schema Information
#
# Table name: referees
#
#  id         :integer          not null, primary key
#  surname    :string(255)
#  givenname  :string(255)
#  clubid     :integer
#  created_at :datetime
#  updated_at :datetime
#

class Referee < ActiveRecord::Base
  belongs_to :club
end
