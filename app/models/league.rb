# == Schema Information
#
# Table name: leagues
#
#  id         :integer          not null, primary key
#  name       :string
#  start      :datetime
#  end        :datetime
#  class_id   :integer
#  iscup      :boolean
#  isfemale   :boolean
#  noreferee  :boolean
#  created_at :datetime
#  updated_at :datetime
#

class League < ActiveRecord::Base
  has_many :league_teams
  has_many :teams, through: :league_teams
  has_many :league_team_players
  has_many :players, through: :league_team_players
end