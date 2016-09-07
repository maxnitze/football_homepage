# spec/views/coaches/edit.haml_spec.rb
require 'rails_helper'

RSpec.describe 'coaches/edit', type: :view do
  before(:each) do
    @coach = assign(:coach, FactoryGirl.create(:coach))
    visit edit_coach_path(@coach)
  end

  it 'renders the edit coach form' do
    expect(page).to have_field(nil, with: @coach.surname)
    expect(page).to have_field(nil, with: @coach.givenname)
    expect(page).to have_field(nil, with: @coach.birthday.year)
    expect(page).to have_field(nil, with: @coach.birthday.month)
    expect(page).to have_field(nil, with: @coach.birthday.day)
    expect(page).to have_field(nil, with: @coach.picture)
  end
end
