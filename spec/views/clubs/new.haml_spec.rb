# spec/views/clubs/new.haml_spec.rb
require 'rails_helper'

RSpec.describe 'clubs/new', type: :view do
  before(:each) do
    assign(:club, FactoryGirl.create(:club))
    visit new_club_path
  end

  it 'renders the new club form' do # TODO as edit but I18n
  end
end
