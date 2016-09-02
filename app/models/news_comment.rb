# == Schema Information
#
# Table name: news_comments
#
#  id         :integer          not null, primary key
#  news_id    :integer
#  user_id    :integer
#  name       :string
#  text       :string
#  created_at :datetime
#  updated_at :datetime
#  title      :string
#

class NewsComment < ActiveRecord::Base
  belongs_to :news
  belongs_to :user

  validates_presence_of :news
  validates_presence_of :user, unless: :name
  validates_presence_of :name, unless: :user

  validates_presence_of :text
end
