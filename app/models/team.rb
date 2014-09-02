# == Schema Information
#
# Table name: teams
#
#  id           :integer          not null, primary key
#  name         :string(255)
#  ishometeam   :boolean
#  hometeamname :string(255)
#  isfemale     :boolean
#  class_id     :integer
#  created_at   :datetime
#  updated_at   :datetime
#

class Team < ActiveRecord::Base
  has_and_belongs_to_many :clubs
  has_many :league_teams
  has_many :leagues, through: :league_teams
  has_many :league_team_players
  has_many :players, through: :league_team_players
end
