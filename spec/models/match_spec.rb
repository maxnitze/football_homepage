# == Schema Information
#
# Table name: matches
#
#  id             :integer          not null, primary key
#  league_id      :integer
#  matchday       :integer
#  home_id        :integer
#  guest_id       :integer
#  start          :datetime
#  end            :datetime
#  goals_home     :integer
#  goals_guest    :integer
#  goals_home_ht  :integer
#  goals_guest_ht :integer
#  referee_id     :integer
#  assistant1_id  :integer
#  assistant2_id  :integer
#  overtime       :boolean
#  penalty        :boolean
#  hncompete      :boolean
#  gncompete      :boolean
#  noreferee      :boolean
#  canceled       :boolean
#  enabled        :boolean
#  created_at     :datetime
#  updated_at     :datetime
#

require 'rails_helper'

RSpec.describe Match, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
