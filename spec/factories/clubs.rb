# == Schema Information
#
# Table name: clubs
#
#  id                :integer          not null, primary key
#  name              :string
#  officestreet      :string
#  officepostalcode  :string
#  officetown        :string
#  stadiumstreet     :string
#  stadiumpostalcode :string
#  stadiumtown       :string
#  homepage          :string
#  crest             :string
#  description       :string
#  created_at        :datetime
#  updated_at        :datetime
#

# spec/factories/clubs.rb
FactoryGirl.define do
  factory :club do |f|
    f.name							{ Faker::Company.name }

		f.officestreet			{ Faker::Address.street_address }
		f.officepostalcode	{ Faker::Address.postcode }
		f.officetown				{ Faker::Address.city }
		f.stadiumstreet			{ Faker::Address.street_address }
		f.stadiumpostalcode	{ Faker::Address.postcode }
		f.stadiumtown				{ Faker::Address.city }
		f.homepage					{ Faker::Internet.url }
		f.crest							{ Faker::Avatar.image }
		f.description				{ Faker::Lorem.paragraph }
  end
end
