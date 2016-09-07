# spec/views/clubs/new.haml_spec.rb
require 'rails_helper'

RSpec.describe 'clubs/new', type: :view do
  before(:each) do
    assign(:club, FactoryGirl.create(:club))
    visit new_club_path
  end

  it 'renders the new club form' do
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
