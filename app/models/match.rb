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

class Match < ActiveRecord::Base
  has_one :league
  has_one :home, class_name: 'Team', foreign_key: :home_id
  has_one :guest, class_name: 'Team', foreign_key: :guest_id
  has_one :referee
  has_one :assistant1, class_name: 'Referee', foreign_key: :assistant1_id
  has_one :assistant2, class_name: 'Referee', foreign_key: :assistant2_id

  has_many :match_players

  searchkick autocomplete: ['home', 'guest']
end
