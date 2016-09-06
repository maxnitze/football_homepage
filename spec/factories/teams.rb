# == Schema Information
#
# Table name: teams
#
#  id           :integer          not null, primary key
#  name         :string
#  ishometeam   :boolean
#  hometeamname :string
#  isfemale     :boolean
#  class_id     :integer
#  created_at   :datetime
#  updated_at   :datetime
#

# spec/factories/teams.rb
FactoryGirl.define do
  factory :team do |t|
    t.name	   						{ Faker::Company.name }
    t.ishometeam          { Faker::Boolean.boolean }
    t.hometeamname        { ishometeam ? Faker::Company.name : nil }
    t.isfemale            { Faker::Boolean.boolean }
    t.class_id   					{ FOOTBALL_CLASSES.sample.first }
  end
end
