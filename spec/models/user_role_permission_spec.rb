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

# spec/models/user_role_permission_spec.rb
require 'rails_helper'

RSpec.describe UserRolePermission, type: :model do
  it 'has a valid factory' do
    expect(build :user_role_permission).to be_valid
  end

  it 'is not valid without a symbol' do
    expect(build :user_role_permission, symbol: nil).to_not be_valid
  end

  it 'is not valid without a description' do
    expect(build :user_role_permission, description: nil).to_not be_valid
  end
end
