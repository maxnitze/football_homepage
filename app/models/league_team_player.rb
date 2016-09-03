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
#  picture    :string
#  created_at :datetime
#  updated_at :datetime
#

class LeagueTeamPlayer < ActiveRecord::Base
  belongs_to :team
  belongs_to :league
  belongs_to :player

  validates_uniqueness_of :league_id, scope: [ :team_id, :player_id ]

  validates_presence_of :team, :league, :player, :position
  validates_inclusion_of :ex, in: [ true, false ]

  enum position: FIELD_POSITIONS
end
