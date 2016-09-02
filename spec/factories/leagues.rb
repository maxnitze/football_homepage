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
  factory :league do |l|
    l.name	   						{ Faker::Company.name }
    l.start	    					{ Faker::Time.between(50.years.ago, Date.today) }
    l.end 	    					{ Faker::Time.between(start ? start : 50.years.ago, 1.year.from_now) }
    l.class_id   					{ FOOTBALL_CLASSES.sample.first }
    l.iscup               { Faker::Boolean.boolean }
    l.isfemale            { Faker::Boolean.boolean }
    l.noreferee           { Faker::Boolean.boolean }
  end
end
