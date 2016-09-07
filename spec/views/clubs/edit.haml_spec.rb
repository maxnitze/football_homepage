# spec/views/clubs/edit.haml_spec.rb
require 'rails_helper'

RSpec.describe 'clubs/edit', type: :view do
  before(:each) do
    @club = assign(:club, FactoryGirl.create(:club))
    visit edit_club_path(@club)
  end

  it 'renders the edit club form' do
    expect(page).to have_field('Name')
    expect(page).to have_field('Officestreet')
    expect(page).to have_field('Officepostalcode')
    expect(page).to have_field('Officetown')
    expect(page).to have_field('Stadiumstreet')
    expect(page).to have_field('Stadiumpostalcode')
    expect(page).to have_field('Stadiumtown')
    expect(page).to have_field('Homepage')
    expect(page).to have_field('Crest')
    expect(page).to have_field('Description')
  end
end
