# == Schema Information
#
# Table name: news
#
#  id         :integer          not null, primary key
#  author_id  :integer
#  editor_id  :integer
#  edit_count :integer          default(0), not null
#  created_at :datetime
#  updated_at :datetime
#

class News < ActiveRecord::Base
  include Bootsy::Container

  belongs_to :author, class_name: 'User', foreign_key: :author_id
  belongs_to :editor, class_name: 'User', foreign_key: :editor_id
  has_many :newstexts

  validates_presence_of :author
  validates_presence_of :editor, if: :is_edited?

  default_scope { order(created_at: :desc) }

  acts_as_taggable

  def is_available_in_current_lang
    newstexts.any? { |nt| nt.language == I18n.locale.to_s }
  end

  def current_newstext
    newstexts.detect { |nt| nt.language == I18n.locale.to_s } || newstexts.first
  end

  private
    def is_edited?
      self.edit_count > 0
    end
end
