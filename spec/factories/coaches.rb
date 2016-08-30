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
  factory :coach do |f|
    f.surname							{ Faker::Name.last_name }
    f.givenname						{ Faker::Name.first_name }

		f.birthday            { Faker::Date.between(100.year.ago, Date.today) }
		f.picture             { Faker::Avatar.image }
  end
end
