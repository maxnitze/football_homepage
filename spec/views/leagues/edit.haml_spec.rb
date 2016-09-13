# spec/views/leagues/edit.haml_spec.rb
require 'rails_helper'

RSpec.describe 'leagues/edit', type: :view do
  login_user :as_leagues_admin

  before(:each) do
    @league = assign(:league, FactoryGirl.create(:league))
    visit edit_league_path(@league)
  end

  it 'renders the edit league form' do
    expect(page).to have_field(nil, with: @league.name)
    expect(page).to have_field(nil, with: @league.class_id)
    expect(page).to have_field(nil, with: @league.iscup)
    expect(page).to have_field(nil, with: @league.isfemale)
    expect(page).to have_field(nil, with: @league.noreferee)
  end
end
