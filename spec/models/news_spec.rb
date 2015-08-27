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

require 'rails_helper'

RSpec.describe News, :type => :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
