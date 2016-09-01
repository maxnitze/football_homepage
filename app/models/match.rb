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
  belongs_to :league
  belongs_to :home, class_name: 'Team', foreign_key: :home_id
  belongs_to :guest, class_name: 'Team', foreign_key: :guest_id
  belongs_to :referee
  belongs_to :assistant1, class_name: 'Referee', foreign_key: :assistant1_id
  belongs_to :assistant2, class_name: 'Referee', foreign_key: :assistant2_id

  has_many :match_players

  validates_presence_of :league, :matchday, :home, :guest, :start, :end,
    :goals_home, :goals_guest, :goals_home_ht, :goals_guest_ht
  validates_presence_of :referee, :assistant2, if: :assistant1
  validates_presence_of :referee, :assistant1, if: :assistant2
  validates_inclusion_of :overtime, :penalty, :hncompete, :gncompete,
    :noreferee, :canceled, :enabled, in: [ true, false ]
end
