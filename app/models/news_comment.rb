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

class NewsComment < ActiveRecord::Base
end
