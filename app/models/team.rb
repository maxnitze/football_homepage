# == Schema Information
#
# Table name: teams
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  ishometeam   :boolean
#  hometeamname :string(255)
#  isfemale     :boolean
#  classid      :integer
#  created_at   :datetime
#  updated_at   :datetime
#

class Team < ActiveRecord::Base
  has_and_belongs_to_many :clubs
end
