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

# spec/models/news_comment_spec.rb
require 'rails_helper'

RSpec.describe NewsComment, type: :model do
  it 'has a valid factory' do
    expect(build :news_comment).to be_valid
  end

  it 'is not valid without a news' do
    expect(build :news_comment, news: nil).to_not be_valid
  end

  it 'is not valid without a user and name' do
    expect(build :news_comment, user: nil, name: nil).to_not be_valid
  end

  it 'is valid without a title' do
    expect(build :news_comment, title: nil).to be_valid
  end

  it 'is not valid without a text' do
    expect(build :news_comment, text: nil).to_not be_valid
  end
end
