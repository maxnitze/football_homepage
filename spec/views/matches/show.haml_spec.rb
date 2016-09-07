require 'rails_helper'

RSpec.describe "matches/show", :type => :view do
  before(:each) do
    @match = assign(:match, Match.create!(
      :league_id => 1,
      :matchday => 2,
      :home_id => 3,
      :guest_id => 4,
      :goals_home => 5,
      :goals_guest => 6,
      :referee_id => 7,
      :assistant1_id => 8,
      :assistant2_id => 9,
      :overtime => false,
      :penalty => false,
      :hncompete => false,
      :gncompete => false,
      :noreferee => false,
      :canceled => false,
      :enabled => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/3/)
    expect(rendered).to match(/4/)
    expect(rendered).to match(/5/)
    expect(rendered).to match(/6/)
    expect(rendered).to match(/7/)
    expect(rendered).to match(/8/)
    expect(rendered).to match(/9/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
  end
end
