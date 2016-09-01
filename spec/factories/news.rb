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
  factory :news do
    author              { FactoryGirl.build(:user) }

    edit_count          { Faker::Number.between(0, 300) }
    editor              { edit_count > 0 ? FactoryGirl.build(:user) : nil }

    factory :news_with_newstexts do
      after(:build) do |news|
        news.newstexts = I18n.available_locales.map do |l|
          FactoryGirl.build(:newstext, language: l, news: news)
        end
      end
    end
  end
end
