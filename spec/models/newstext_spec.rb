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

require 'rails_helper'

RSpec.describe Newstext, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
