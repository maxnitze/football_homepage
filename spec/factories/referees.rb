# == Schema Information
#
# Table name: referees
#
#  id         :integer          not null, primary key
#  surname    :string
#  givenname  :string
#  club_id    :integer
#  created_at :datetime
#  updated_at :datetime
#  birthday   :datetime
#

# spec/factories/referees.rb
FactoryGirl.define do
  factory :referee do |r|
    r.surname							{ Faker::Name.last_name }
    r.givenname						{ Faker::Name.first_name }
    r.club

    r.birthday            { Faker::Date.between(100.year.ago, Date.today) }
  end
end
