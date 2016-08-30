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

require 'rails_helper'

RSpec.describe LeagueTeamPlayer, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
