# == Schema Information
#
# Table name: user_roles
#
#  id          :integer          not null, primary key
#  name        :string(255)
#  description :string(255)
#  symbol      :string(255)
#  created_at  :datetime
#  updated_at  :datetime
#

class UserRole < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_and_belongs_to_many :user_role_permissions

  validates :symbol, uniqueness: true
end
