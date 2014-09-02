# == Schema Information
#
# Table name: league_teams
#
#  id             :integer          not null, primary key
#  league_id      :integer
#  team_id        :integer
#  picture        :string(255)
#  picturecaption :string(255)
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

require 'rails_helper'

RSpec.describe LeagueTeams, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
