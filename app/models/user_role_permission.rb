# == Schema Information
#
# Table name: user_role_permissions
#
#  id          :integer          not null, primary key
#  symbol      :string(255)
#  description :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class UserRolePermission < ActiveRecord::Base
  has_and_belongs_to_many :user_roles

  validates :symbol, uniqueness: true
end
