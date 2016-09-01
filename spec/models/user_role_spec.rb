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

require 'rails_helper'

RSpec.describe UserRole, type: :model do
  it 'has a valid factory' do
    expect(build :user_role).to be_valid
    expect(build :user_role_with_permissions).to be_valid
  end

  it 'is not valid without a name' do
    expect(build :user_role, name: nil).to_not be_valid
  end

  it 'is not valid without a description' do
    expect(build :user_role, description: nil).to_not be_valid
  end

  it 'is not valid without a symbol' do
    expect(build :user_role, symbol: nil).to_not be_valid
  end
end
