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

class UserRolePermission < ActiveRecord::Base
  has_and_belongs_to_many :user_roles

  validates_presence_of :symbol, :description
  validates_uniqueness_of :symbol
end
