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
