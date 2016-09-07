# spec/views/clubs/edit.haml_spec.rb
require 'rails_helper'

RSpec.describe 'clubs/edit', type: :view do
  before(:each) do
    @club = assign(:club, FactoryGirl.create(:club))
    visit edit_club_path(@club)
  end

  it 'renders the edit club form' do
    expect(page).to have_field(nil, with: @club.name)
    expect(page).to have_field(nil, with: @club.officestreet)
    expect(page).to have_field(nil, with: @club.officepostalcode)
    expect(page).to have_field(nil, with: @club.officetown)
    expect(page).to have_field(nil, with: @club.stadiumstreet)
    expect(page).to have_field(nil, with: @club.stadiumpostalcode)
    expect(page).to have_field(nil, with: @club.stadiumtown)
    expect(page).to have_field(nil, with: @club.homepage)
    expect(page).to have_field(nil, with: @club.crest)
    expect(page).to have_field(nil, with: @club.description)
  end
end
