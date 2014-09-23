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

require 'rails_helper'

RSpec.describe UserRolePermission, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
