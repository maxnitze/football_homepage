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

  has_attached_file :picture, styles: { medium: '640x360>', thumb: '80x45>' }, default_url: "/system/teams/pictures/no_teamphoto.png"
  validates_attachment_content_type :portrait, content_type: /\Aimage\/.*\Z/
end
