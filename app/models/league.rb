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
  has_many :league_teams, dependent: :destroy
  has_many :teams, through: :league_teams
  has_many :league_team_players, dependent: :destroy
  has_many :players, through: :league_team_players

  default_scope { order(start: :desc, end: :desc, class_id: :desc, name: :asc) }

  validates_presence_of :name, :start, :end, :class_id
  validates_inclusion_of :iscup, :isfemale, :noreferee, in: [ true, false ]
end
