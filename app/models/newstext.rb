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

  validates :language, uniqueness: { scope: :news, message: I18n.t('models.newstext.unique_per_lang') }
  validates_presence_of :title, :text, message: I18n.t('models.news.mandatory')

  def full_title
    subtitle? ? "#{title}: #{subtitle}" : title
  end
end
