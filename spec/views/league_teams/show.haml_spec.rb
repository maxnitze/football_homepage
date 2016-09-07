require 'rails_helper'

RSpec.describe "league_teams/show", type: :view do
  before(:each) do
    @league_team = assign(:league_team, LeagueTeam.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
