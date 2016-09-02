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
  factory :player do |p|
    p.surname                 { Faker::Name.last_name }
    p.givenname					      { Faker::Name.first_name }
		p.birthday                { Faker::Date.between(100.year.ago, Date.today) }
    p.position                { FIELD_POSITIONS.sample }
    p.leg                     { PLAYER_LEGS.sample }

		p.portrait_file_name      { Faker::Avatar.image }
    p.portrait_content_type   { "image/#{Faker::Lorem.word}" }
    p.portrait_file_size      { Faker::Number.between(1, 1000) }
    p.portrait_updated_at     { Faker::Time.between(1.year.ago, Time.now) }
  end
end
