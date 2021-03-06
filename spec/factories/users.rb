# == Schema Information
#
# Table name: users
#
#  id                     :integer          not null, primary key
#  name                   :string
#  surname                :string
#  givenname              :string
#  created_at             :datetime
#  updated_at             :datetime
#  email                  :string           default(""), not null
#  encrypted_password     :string           default(""), not null
#  reset_password_token   :string
#  reset_password_sent_at :datetime
#  remember_created_at    :datetime
#  sign_in_count          :integer          default(0), not null
#  current_sign_in_at     :datetime
#  last_sign_in_at        :datetime
#  current_sign_in_ip     :string
#  last_sign_in_ip        :string
#  confirmation_token     :string
#  confirmed_at           :datetime
#  confirmation_sent_at   :datetime
#  unconfirmed_email      :string
#  failed_attempts        :integer          default(0), not null
#  unlock_token           :string
#  locked_at              :datetime
#  avatar_file_name       :string
#  avatar_content_type    :string
#  avatar_file_size       :integer
#  avatar_updated_at      :datetime
#  locale                 :string
#  provider               :string
#  uid                    :string
#

# spec/factories/clubs.rb
FactoryGirl.define do
  factory :user do |u|
    u.name                  { Faker::Internet.user_name }
    u.surname               { Faker::Name.last_name }
    u.givenname					    { Faker::Name.first_name }
    u.email                 { Faker::Internet.email }
    u.password              { Faker::Internet.password(8, 20, true, true) }
    u.locale                { I18n.available_locales.sample }

		u.avatar_file_name      { Faker::Avatar.image }
    u.avatar_content_type   { "image/#{Faker::Lorem.word}" }
    u.avatar_file_size      { Faker::Number.between(1, 1000) }
    u.avatar_updated_at     { Faker::Time.between(1.year.ago, Time.now) }

    trait :as_admin do
      after(:build) do |user|
		    user.user_roles << UserRole.find_by_symbol(:admin)
      end
    end

    trait :as_super_editor do
      after(:build) do |user|
		    user.user_roles << UserRole.find_by_symbol(:super_editor)
      end
    end

    trait :as_editor do
      after(:build) do |user|
		    user.user_roles << UserRole.find_by_symbol(:editor)
      end
    end

    trait :as_teams_admin do
      after(:build) do |user|
		    user.user_roles << UserRole.find_by_symbol(:teams_admin)
      end
    end

    trait :as_leagues_admin do
      after(:build) do |user|
		    user.user_roles << UserRole.find_by_symbol(:leagues_admin)
      end
    end

    trait :as_bettinggame_manager do
      after(:build) do |user|
		    user.user_roles << UserRole.find_by_symbol(:bettinggame_manager)
      end
    end
  end
end
