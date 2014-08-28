# == Schema Information
#
# Table name: players
#
#  id         :integer          not null, primary key
#  surname    :string(255)
#  givenname  :string(255)
#  birthday   :datetime
#  picture    :string(255)
#  positionid :integer
#  legid      :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'rails_helper'

RSpec.describe Player, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
