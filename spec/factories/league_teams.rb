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

# spec/factories/league_teams.rb
FactoryGirl.define do
  factory :league_team do |lt|
    lt.league_id            { create(:league).id }
    lt.team_id              { create(:team).id }
    lt.squadleagueteam_id   nil
    lt.unsubscribed         { Faker::Boolean.boolean }

    lt.wincount             { Faker::Number.between(0, 100) }
    lt.losecount            { Faker::Number.between(0, 100) }
    lt.remiscount           { Faker::Number.between(0, 100) }
    lt.goalsshot            { Faker::Number.between(0, 500) }
    lt.goalsgot             { Faker::Number.between(0, 500) }

		lt.picture_file_name    { Faker::Avatar.image }
    lt.picture_content_type { "image/#{Faker::Lorem.word}" }
    lt.picture_file_size    { Faker::Number.between(1, 1000) }
    lt.picture_updated_at   { Faker::Time.between(1.year.ago, Time.now) }
    lt.picturecaption       { Faker::Lorem.paragraph(2, true, 3) }

    factory :league_team_with_inherited_squad do |lts|
      after(:build) do |league_team|
        league_team.squadleagueteam = create(:league_team, team: league_team.team)
      end
    end
  end
end
