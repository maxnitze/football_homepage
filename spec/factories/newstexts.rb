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

# spec/factories/newstexts.rb
FactoryGirl.define do
  factory :newstext do
    news
    language            { I18n.available_locales.sample }

    title               { Faker::Lorem.sentence }
    subtitle            { Faker::Lorem.sentence }
    abstract            { Faker::Lorem.paragraph }
    text                { Faker::Lorem.paragraph(6, true, 8) }
  end
end
