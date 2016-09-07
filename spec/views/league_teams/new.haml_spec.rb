require 'rails_helper'

RSpec.describe "league_teams/new", type: :view do
  before(:each) do
    assign(:league_team, LeagueTeam.new())
  end

  it "renders new league_team form" do
    render

    assert_select "form[action=?][method=?]", league_teams_path, "post" do
    end
  end
end
