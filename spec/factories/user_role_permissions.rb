# == Schema Information
#
# Table name: user_role_permissions
#
#  id          :integer          not null, primary key
#  symbol      :string
#  description :string
#  created_at  :datetime
#  updated_at  :datetime
#

# spec/factories/user_role_permissions.rb
FactoryGirl.define do
  factory :user_role_permission do |p|
    p.symbol                { Faker::Hipster.word }
    p.description           { Faker::Hipster.sentence }
  end
end
