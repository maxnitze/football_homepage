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

require 'rails_helper'

RSpec.describe UserRole, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
