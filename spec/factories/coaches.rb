# == Schema Information
#
# Table name: coaches
#
#  id         :integer          not null, primary key
#  surname    :string
#  givenname  :string
#  birthday   :datetime
#  picture    :string
#  created_at :datetime
#  updated_at :datetime
#

# spec/factories/coaches.rb
FactoryGirl.define do
  factory :coach do |c|
    c.surname							{ Faker::Name.last_name }
    c.givenname						{ Faker::Name.first_name }

		c.birthday            { Faker::Date.between(100.year.ago, Date.today) }
		c.picture             { Faker::Avatar.image }
  end
end
