require 'rails_helper'

RSpec.describe "matches/new", :type => :view do
  before(:each) do
    assign(:match, Match.new(
      :league_id => 1,
      :matchday => 1,
      :home_id => 1,
      :guest_id => 1,
      :goals_home => 1,
      :goals_guest => 1,
      :referee_id => 1,
      :assistant1_id => 1,
      :assistant2_id => 1,
      :overtime => false,
      :penalty => false,
      :hncompete => false,
      :gncompete => false,
      :noreferee => false,
      :canceled => false,
      :enabled => false
    ))
  end

  it "renders new match form" do
    render

    assert_select "form[action=?][method=?]", matches_path, "post" do

      assert_select "input#match_league_id[name=?]", "match[league_id]"

      assert_select "input#match_matchday[name=?]", "match[matchday]"

      assert_select "input#match_home_id[name=?]", "match[home_id]"

      assert_select "input#match_guest_id[name=?]", "match[guest_id]"

      assert_select "input#match_goals_home[name=?]", "match[goals_home]"

      assert_select "input#match_goals_guest[name=?]", "match[goals_guest]"

      assert_select "input#match_referee_id[name=?]", "match[referee_id]"

      assert_select "input#match_assistant1_id[name=?]", "match[assistant1_id]"

      assert_select "input#match_assistant2_id[name=?]", "match[assistant2_id]"

      assert_select "input#match_overtime[name=?]", "match[overtime]"

      assert_select "input#match_penalty[name=?]", "match[penalty]"

      assert_select "input#match_hncompete[name=?]", "match[hncompete]"

      assert_select "input#match_gncompete[name=?]", "match[gncompete]"

      assert_select "input#match_noreferee[name=?]", "match[noreferee]"

      assert_select "input#match_canceled[name=?]", "match[canceled]"

      assert_select "input#match_enabled[name=?]", "match[enabled]"
    end
  end
end
