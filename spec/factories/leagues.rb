# == Schema Information
#
# Table name: leagues
#
#  id         :integer          not null, primary key
#  name       :string
#  start      :datetime
#  end        :datetime
#  class_id   :integer
#  iscup      :boolean
#  isfemale   :boolean
#  noreferee  :boolean
#  created_at :datetime
#  updated_at :datetime
#

# spec/factories/leagues.rb
FactoryGirl.define do
  factory :league do |f|
    f.name	   						{ Faker::Company.name }
    f.start	    					{ Faker::Time.between(50.years.ago, Date.today) }
    f.end 	    					{ Faker::Time.between(start ? start : 50.years.ago, 1.year.from_now) }
    f.class_id   					{ FOOTBALL_CLASSES.map { |c| c.first }.sample }
    f.iscup               { Faker::Boolean.boolean }
    f.isfemale            { Faker::Boolean.boolean }
    f.noreferee           { Faker::Boolean.boolean }
  end
end
