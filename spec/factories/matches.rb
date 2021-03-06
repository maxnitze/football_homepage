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

# spec/factories/matches.rb
FactoryGirl.define do
  factory :match do |m| # lambda needed because of attribute 'end'
    m.league_id       { create(:league).id }
    m.matchday        { Faker::Number.between(0, 34) }
    m.home_id         { create(:team).id }
    m.guest_id        { create(:team).id }
    m.start           { Faker::Time.between(100.year.ago, 100.years.from_now) }
    m.end             { Faker::Time.between(100.year.ago, 100.years.from_now) }
    m.goals_home      { Faker::Number.between(0, 100) }
    m.goals_guest     { Faker::Number.between(0, 100) }
    m.goals_home_ht   { Faker::Number.between(0, goals_home ? goals_home : 100) }
    m.goals_guest_ht  { Faker::Number.between(0, goals_guest ? goals_guest : 100) }
    m.referee_id      { create(:referee).id }
    m.assistant1_id   { create(:referee).id }
    m.assistant2_id   { create(:referee).id }
    m.overtime        { Faker::Boolean.boolean }
    m.penalty         { Faker::Boolean.boolean }
    m.hncompete       { Faker::Boolean.boolean }
    m.gncompete       { Faker::Boolean.boolean }
    m.noreferee       { Faker::Boolean.boolean }
    m.canceled        { Faker::Boolean.boolean }
    m.enabled         { Faker::Boolean.boolean }
  end
end
