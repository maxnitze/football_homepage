# spec/views/coaches/index.haml_spec.rb
require 'rails_helper'

RSpec.describe 'coaches/index', type: :view do
  before(:each) do
    @coaches = assign(:coaches, create_list(:coach, Faker::Number.between(1, 10)))
    visit coaches_path
  end

  it 'renders a list of coaches' do
    @coaches.each do |coach|
      expect(page).to have_content(coach.surname)
      expect(page).to have_content(coach.givenname)
      expect(page).to have_content(coach.birthday)
      expect(page).to have_content(coach.picture)
    end
  end
end
