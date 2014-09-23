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

require 'rails_helper'

RSpec.describe News, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
