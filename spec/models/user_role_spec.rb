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

RSpec.describe UserRole, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
