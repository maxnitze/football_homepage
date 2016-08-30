# == Schema Information
#
# Table name: players
#
#  id                    :integer          not null, primary key
#  surname               :string
#  givenname             :string
#  birthday              :datetime
#  position              :integer
#  leg                   :integer
#  created_at            :datetime
#  updated_at            :datetime
#  portrait_file_name    :string
#  portrait_content_type :string
#  portrait_file_size    :integer
#  portrait_updated_at   :datetime
#

# spec/factories/coaches.rb
FactoryGirl.define do
  factory :player do |f|
    f.surname                 { Faker::Name.last_name }
    f.givenname					      { Faker::Name.first_name }
		f.birthday                { Faker::Date.between(100.year.ago, Date.today) }
    f.position                { FIELD_POSITIONS.sample }
    f.leg                     { PLAYER_LEGS.sample }

		f.portrait_file_name      { Faker::Avatar.image }
    f.portrait_content_type   { "image/#{Faker::Lorem.word}" }
    f.portrait_file_size      { Faker::Number.between(1, 1000) }
    f.portrait_updated_at     { Faker::Time.between(1.year.ago, Time.now) }
  end
end
