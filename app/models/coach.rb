# == Schema Information
#
# Table name: coaches
#
#  id         :integer          not null, primary key
#  surname    :string(255)
#  givenname  :string(255)
#  birthday   :datetime
#  picture    :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class Coach < ActiveRecord::Base
end
