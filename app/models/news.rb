# == Schema Information
#
# Table name: news
#
#  id         :integer          not null, primary key
#  title      :string(255)      not null
#  subtitle   :string(255)      default(""), not null
#  author_id  :integer          not null
#  editor_id  :integer
#  edit_count :integer          default(0), not null
#  abstract   :string(255)      default(""), not null
#  text       :string(255)      default(""), not null
#  created_at :datetime
#  updated_at :datetime
#

class News < ActiveRecord::Base
  belongs_to :author, class_name: 'User', foreign_key: :author_id
  belongs_to :editor, class_name: 'User', foreign_key: :editor_id

  default_scope { order(created_at: :desc) }

  validates_presence_of :title, :text, message: 'muss ausgefüllt sein!'

  def full_title
  	if subtitle?
  	  "#{title}: #{subtitle}"
  	else
  	  title
  	end
  end
end
