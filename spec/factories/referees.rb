# == Schema Information
#
# Table name: referees
#
#  id                    :integer          not null, primary key
#  surname               :string
#  givenname             :string
#  club_id               :integer
#  created_at            :datetime
#  updated_at            :datetime
#  birthday              :datetime
#  portrait_file_name    :string
#  portrait_content_type :string
#  portrait_file_size    :integer
#  portrait_updated_at   :datetime
#

# spec/factories/referees.rb
FactoryGirl.define do
  factory :referee do |r|
    r.surname                 { Faker::Name.last_name }
    r.givenname               { Faker::Name.first_name }
    r.birthday                { Faker::Time.between(100.year.ago, Date.today) }

    r.club_id                 { create(:club).id }

    r.portrait_file_name      { Faker::Avatar.image }
    r.portrait_content_type   { "image/#{Faker::Lorem.word}" }
    r.portrait_file_size      { Faker::Number.between(1, 1000) }
    r.portrait_updated_at     { Faker::Time.between(1.year.ago, Time.now) }
  end
end
