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

# spec/factories/news_comments.rb
FactoryGirl.define do
  factory :news_comment do |nc|
    nc.news

    nc.user
    nc.name               { Faker::Name.name }

    nc.title              { Faker::Lorem.sentence }
    nc.text               { Faker::Lorem.paragraph(6, true, 8) }
  end
end
