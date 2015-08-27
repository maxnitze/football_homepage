require "rails_helper"

RSpec.describe NewsCommentsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/news_comments").to route_to("news_comments#index")
    end

    it "routes to #new" do
      expect(:get => "/news_comments/new").to route_to("news_comments#new")
    end

    it "routes to #show" do
      expect(:get => "/news_comments/1").to route_to("news_comments#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/news_comments/1/edit").to route_to("news_comments#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/news_comments").to route_to("news_comments#create")
    end

    it "routes to #update" do
      expect(:put => "/news_comments/1").to route_to("news_comments#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/news_comments/1").to route_to("news_comments#destroy", :id => "1")
    end

  end
end
