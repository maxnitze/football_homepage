# == Schema Information
#
# Table name: league_teams
#
#  id             :integer          not null, primary key
#  league_id      :integer
#  team_id        :integer
#  picture        :string
#  picturecaption :string
#  squadleague_id :integer
#  unsubscribed   :boolean
#  wincount       :integer
#  losecount      :integer
#  remiscount     :integer
#  goalsshot      :integer
#  goalsgot       :integer
#  created_at     :datetime
#  updated_at     :datetime
#

class LeagueTeam < ActiveRecord::Base
  validates_uniqueness_of :league_id, scope: [ :team_id ]

  belongs_to :league
  belongs_to :team
  has_one :squadleague, class_name: 'League', foreign_key: :squadleague_id
end
