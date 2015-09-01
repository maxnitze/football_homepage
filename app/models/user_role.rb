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

class UserRole < ActiveRecord::Base
  has_and_belongs_to_many :users
  has_and_belongs_to_many :user_role_permissions

  validates :symbol, uniqueness: true
end