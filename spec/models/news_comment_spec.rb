# == Schema Information
#
# Table name: news_comments
#
#  id         :integer          not null, primary key
#  news_id    :integer
#  user_id    :integer
#  name       :string
#  email      :string
#  created    :datetime
#  text       :string
#  created_at :datetime
#  updated_at :datetime
#

require 'rails_helper'

RSpec.describe NewsComment, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
