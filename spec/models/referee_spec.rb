# == Schema Information
#
# Table name: referees
#
#  id         :integer          not null, primary key
#  surname    :string
#  givenname  :string
#  clubid     :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'rails_helper'

RSpec.describe Referee, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
