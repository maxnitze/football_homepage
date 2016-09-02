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
  belongs_to :match
  belongs_to :player

  validates_uniqueness_of :match_id, scope: [ :player_id ]
  validates_presence_of :match, :player, :position, :backnumber
  validates_numericality_of :backnumber, greater_than: 0

  enum position: FIELD_POSITIONS
end
