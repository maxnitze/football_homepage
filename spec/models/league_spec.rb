# == Schema Information
#
# Table name: leagues
#
#  id         :integer          not null, primary key
#  name       :string
#  start      :datetime
#  end        :datetime
#  class_id   :integer
#  iscup      :boolean
#  isfemale   :boolean
#  noreferee  :boolean
#  created_at :datetime
#  updated_at :datetime
#

require 'rails_helper'

RSpec.describe League, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
