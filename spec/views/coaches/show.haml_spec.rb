# spec/views/coaches/show.haml_spec.rb
require 'rails_helper'

RSpec.describe 'coaches/show', type: :view do
  before(:each) do
    @coach = assign(:coach, FactoryGirl.create(:coach))
    visit coach_path(@coach)
  end

  it 'renders coaches attributes' do
    expect(page).to have_content(@coach.surname)
    expect(page).to have_content(@coach.givenname)
    expect(page).to have_content(@coach.birthday)
    expect(page).to have_content(@coach.picture)
  end
end
