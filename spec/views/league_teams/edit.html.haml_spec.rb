require 'rails_helper'

RSpec.describe "league_teams/edit", type: :view do
  before(:each) do
    @league_team = assign(:league_team, LeagueTeam.create!())
  end

  it "renders the edit league_team form" do
    render

    assert_select "form[action=?][method=?]", league_team_path(@league_team), "post" do
    end
  end
end
