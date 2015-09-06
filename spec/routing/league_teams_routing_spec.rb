require "rails_helper"

RSpec.describe LeagueTeamsController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/league_teams").to route_to("league_teams#index")
    end

    it "routes to #new" do
      expect(:get => "/league_teams/new").to route_to("league_teams#new")
    end

    it "routes to #show" do
      expect(:get => "/league_teams/1").to route_to("league_teams#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/league_teams/1/edit").to route_to("league_teams#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/league_teams").to route_to("league_teams#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/league_teams/1").to route_to("league_teams#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/league_teams/1").to route_to("league_teams#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/league_teams/1").to route_to("league_teams#destroy", :id => "1")
    end

  end
end
