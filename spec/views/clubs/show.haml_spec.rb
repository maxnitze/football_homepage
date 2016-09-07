# spec/views/clubs/show.haml_spec.rb
require 'rails_helper'

RSpec.describe 'clubs/show', type: :view do
  before(:each) do
    @club = assign(:club, FactoryGirl.create(:club))
    visit club_path(@club)
  end

  it 'renders clubs attributes' do
    expect(page).to have_content(@club.name)
    expect(page).to have_content(@club.officestreet)
    expect(page).to have_content(@club.officepostalcode)
    expect(page).to have_content(@club.officetown)
    expect(page).to have_content(@club.stadiumstreet)
    expect(page).to have_content(@club.stadiumpostalcode)
    expect(page).to have_content(@club.stadiumtown)
    expect(page).to have_content(@club.homepage)
    expect(page).to have_content(@club.crest)
    expect(page).to have_content(@club.description)
  end
end
