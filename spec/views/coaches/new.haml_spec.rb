# spec/views/coaches/new.haml_spec.rb
require 'rails_helper'

RSpec.describe 'coaches/new', type: :view do
  before(:each) do
    assign(:coach, FactoryGirl.create(:coach))
    visit new_coach_path
  end

  it 'renders the new coach form' do # TODO as edit but I18n
  end
end
