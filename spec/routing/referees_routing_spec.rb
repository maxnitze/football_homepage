require "rails_helper"

RSpec.describe RefereesController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/referees").to route_to("referees#index")
    end

    it "routes to #new" do
      expect(:get => "/referees/new").to route_to("referees#new")
    end

    it "routes to #show" do
      expect(:get => "/referees/1").to route_to("referees#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/referees/1/edit").to route_to("referees#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/referees").to route_to("referees#create")
    end

    it "routes to #update" do
      expect(:put => "/referees/1").to route_to("referees#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/referees/1").to route_to("referees#destroy", :id => "1")
    end

  end
end
