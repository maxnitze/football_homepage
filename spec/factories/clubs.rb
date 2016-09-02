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
  factory :club do |c|
    c.name							{ Faker::Company.name }

		c.officestreet			{ Faker::Address.street_address }
		c.officepostalcode	{ Faker::Address.postcode }
		c.officetown				{ Faker::Address.city }
		c.stadiumstreet			{ Faker::Address.street_address }
		c.stadiumpostalcode	{ Faker::Address.postcode }
		c.stadiumtown				{ Faker::Address.city }
		c.homepage					{ Faker::Internet.url }
		c.crest							{ Faker::Avatar.image }
		c.description				{ Faker::Lorem.paragraph }
  end
end
