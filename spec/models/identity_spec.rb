# == Schema Information
#
# Table name: identities
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  provider   :string
#  uid        :string
#  created_at :datetime
#  updated_at :datetime
#

require 'rails_helper'

RSpec.describe Identity, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
