require 'rails_helper'

RSpec.describe "matches/index", :type => :view do
  before(:each) do
    assign(:matches, [
      Match.create!(
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
      ),
      Match.create!(
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
      )
    ])
  end

  it "renders a list of matches" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => 6.to_s, :count => 2
    assert_select "tr>td", :text => 7.to_s, :count => 2
    assert_select "tr>td", :text => 8.to_s, :count => 2
    assert_select "tr>td", :text => 9.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
