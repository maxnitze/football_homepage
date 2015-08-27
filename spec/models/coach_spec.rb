# == Schema Information
#
# Table name: coaches
#
#  id         :integer          not null, primary key
#  surname    :string
#  givenname  :string
#  birthday   :datetime
#  picture    :string
#  created_at :datetime
#  updated_at :datetime
#

require 'rails_helper'

RSpec.describe Coach, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
