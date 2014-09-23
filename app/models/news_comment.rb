# == Schema Information
#
# Table name: news_comments
#
#  id         :integer          not null, primary key
#  news_id    :integer
#  user_id    :integer
#  name       :string(255)
#  email      :string(255)
#  created    :datetime
#  text       :string(255)
#  created_at :datetime
#  updated_at :datetime
#

class NewsComment < ActiveRecord::Base
end
