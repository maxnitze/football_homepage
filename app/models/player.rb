# == Schema Information
#
# Table name: players
#
#  id         :integer          not null, primary key
#  surname    :string(255)
#  givenname  :string(255)
#  birthday   :datetime
#  picture    :string(255)
#  position   :integer
#  leg        :integer
#  created_at :datetime
#  updated_at :datetime
#

class Player < ActiveRecord::Base
  has_many :league_team_players
  has_many :teams, through: :league_team_players
  has_many :leagues, through: :league_team_players

  enum position: [ :goal, :defense, :midfield, :offense ]
  enum leg: [ :right, :left, :both ]
end
