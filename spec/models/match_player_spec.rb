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

require 'rails_helper'

RSpec.describe MatchPlayer, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
