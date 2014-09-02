# == Schema Information
#
# Table name: league_team_players
#
#  id         :integer          not null, primary key
#  team_id    :integer
#  league_id  :integer
#  player_id  :integer
#  position   :integer
#  ex         :boolean
#  picture    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class LeagueTeamPlayer < ActiveRecord::Base
  validates_uniqueness_of :league_id, scope: [ :team_id, :player_id ]

  enum position: [ :goal, :defense, :midfield, :attack ]
end
