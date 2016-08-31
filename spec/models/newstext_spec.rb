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

# spec/models/newstext_spec.rb
require 'rails_helper'

RSpec.describe Newstext, type: :model do
  it 'has a valid factory' do
    expect(build :newstext).to be_valid
  end

  it 'is valid without a subtitle' do
    expect(build :newstext, subtitle: nil).to be_valid
  end

  it 'is valid without an abstract' do
    expect(build :newstext, abstract: nil).to be_valid
  end

  it 'is not valid without a news' do
    expect(build :newstext, news: nil).to_not be_valid
  end

  it 'is not valid without a title' do
    expect(build :newstext, title: nil).to_not be_valid
  end

  it 'is not valid without a text' do
    expect(build :newstext, text: nil).to_not be_valid
  end

  it 'is valid when is unique for a news respecting its language' do
    news = create :news
    I18n.available_locales.each do |locale|
      newstext = build :newstext, news: news, language: locale
      expect(newstext).to be_valid
      newstext.save
    end
  end

  it 'is not valid when text with same language already exists' do
    news = create :news
    locale = I18n.available_locales.sample
    create :newstext, news: news, language: locale
    expect(build :newstext, news: news, language: locale).to_not be_valid
  end
end
