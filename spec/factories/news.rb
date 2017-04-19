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

# spec/factories/news.rb
FactoryGirl.define do
  factory :news do |n|
    n.author              { build :user }

    n.edit_count          { Faker::Number.between(0, 300) }
    n.editor              { edit_count > 0 ? FactoryGirl.build(:user) : nil }

    factory :news_with_newstexts do
      after(:build) do |news|
        news.newstexts = I18n.available_locales.map { |locale|
          FactoryGirl.build :newstext, language: locale, news: news
        }
      end

      after(:create) do |news|
        news.newstexts.map(&:save)
      end
    end
  end
end
