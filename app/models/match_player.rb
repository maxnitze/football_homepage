# == Schema Information
#
# Table name: match_players
#
#  id         :integer          not null, primary key
#  match_id   :integer
#  player_id  :integer
#  position   :integer
#  backnumber :integer
#  created_at :datetime
#  updated_at :datetime
#

class MatchPlayer < ActiveRecord::Base
  validates_uniqueness_of :match_id, scope: [ :player_id ]

  enum position: [ :goal, :defense, :midfield, :offense ]

  belongs_to :match
  belongs_to :player
end
