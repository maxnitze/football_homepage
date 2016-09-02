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
  factory :user_role do |r|
    r.name                  { Faker::Hipster.words(2, false, true).join ' ' }
    r.description           { Faker::Hipster.sentence }
    r.symbol                { Faker::Hipster.word }

    factory :user_role_with_permissions do
      after(:build) do |user_role|
        all_user_role_permissions = UserRolePermission.all
        user_role.user_role_permissions = all_user_role_permissions.sample(Faker::Number.between(0, all_user_role_permissions.size))
      end
    end
  end
end
