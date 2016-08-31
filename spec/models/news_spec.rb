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

# spec/models/news_spec.rb
require 'rails_helper'

RSpec.describe News, type: :model do
  it 'has a valid factory' do
    expect(build :news).to be_valid
  end

  it 'is valid when edit count is zero' do
    expect(build :news, edit_count: 0).to be_valid
  end

  it 'is not valid without an author' do
    expect(build :news, author: nil).to_not be_valid
  end

  it 'is not valid when edit count is greater 0 and editor is not set' do
    expect(build :news, edit_count: 1, editor: nil).to_not be_valid
  end
end
