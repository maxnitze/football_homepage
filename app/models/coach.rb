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

class Coach < ActiveRecord::Base
end
