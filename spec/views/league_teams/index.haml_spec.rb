require 'rails_helper'

RSpec.describe "league_teams/index", type: :view do
  before(:each) do
    assign(:league_teams, [
      LeagueTeam.create!(),
      LeagueTeam.create!()
    ])
  end

  it "renders a list of league_teams" do
    render
  end
end
