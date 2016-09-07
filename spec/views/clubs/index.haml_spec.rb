# spec/views/clubs/index.haml_spec.rb
require 'rails_helper'

RSpec.describe 'clubs/index', type: :view do
  before(:each) do
    @clubs = assign(:clubs, create_list(:club, Faker::Number.between(1, 10)))
    visit clubs_path
  end

  it 'renders a list of clubs' do
    @clubs.each do |club|
      expect(page).to have_content(club.name)
      expect(page).to have_content(club.officestreet)
      expect(page).to have_content(club.officepostalcode)
      expect(page).to have_content(club.officetown)
      expect(page).to have_content(club.stadiumstreet)
      expect(page).to have_content(club.stadiumpostalcode)
      expect(page).to have_content(club.stadiumtown)
      expect(page).to have_content(club.homepage)
      expect(page).to have_content(club.crest)
      expect(page).to have_content(club.description)
    end
  end
end
