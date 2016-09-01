# == Schema Information
#
# Table name: user_roles
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  symbol      :string
#  created_at  :datetime
#  updated_at  :datetime
#

# spec/factories/user_roles.rb
FactoryGirl.define do
  factory :user_role do |f|
    f.name                  { Faker::Hipster.words(2, false, true).join ' ' }
    f.description           { Faker::Hipster.sentence }
    f.symbol                { Faker::Hipster.word }

    factory :user_role_with_permissions do
      after(:create) do |user_role|
        user_role.user_role_permissions = create_list(Faker::Number.between(1, 10), :user_role_permission)
      end
    end
  end
end
