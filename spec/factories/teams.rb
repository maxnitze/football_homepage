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
  factory :team do |f|
    f.name	   						{ Faker::Company.name }
    f.ishometeam          { Faker::Boolean.boolean }
    f.hometeamname        { ishometeam ? Faker::Company.name : nil }
    f.isfemale            { Faker::Boolean.boolean }
    f.class_id   					{ FOOTBALL_CLASSES.map { |c| c.first }.sample }
  end
end
