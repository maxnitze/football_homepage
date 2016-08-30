# == Schema Information
#
# Table name: league_teams
#
#  id                   :integer          not null, primary key
#  league_id            :integer
#  team_id              :integer
#  picturecaption       :string
#  squadleagueteam_id   :integer
#  unsubscribed         :boolean
#  wincount             :integer
#  losecount            :integer
#  remiscount           :integer
#  goalsshot            :integer
#  goalsgot             :integer
#  created_at           :datetime
#  updated_at           :datetime
#  picture_file_name    :string
#  picture_content_type :string
#  picture_file_size    :integer
#  picture_updated_at   :datetime
#

require 'rails_helper'

RSpec.describe LeagueTeam, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
