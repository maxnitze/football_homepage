# == Schema Information
#
# Table name: newstexts
#
#  id         :integer          not null, primary key
#  news_id    :integer
#  language   :string           not null
#  title      :string           not null
#  subtitle   :string           default(""), not null
#  abstract   :string           default(""), not null
#  text       :string           default(""), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Newstext < ActiveRecord::Base
  belongs_to :news

  validates_presence_of :news, :title, :text
  validates_uniqueness_of :language, scope: :news

  def full_title
    subtitle? ? "#{title}: #{subtitle}" : title
  end
end
