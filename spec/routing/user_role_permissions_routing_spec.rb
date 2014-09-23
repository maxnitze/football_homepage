require "rails_helper"

RSpec.describe UserRolePermissionsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/user_role_permissions").to route_to("user_role_permissions#index")
    end

    it "routes to #new" do
      expect(:get => "/user_role_permissions/new").to route_to("user_role_permissions#new")
    end

    it "routes to #show" do
      expect(:get => "/user_role_permissions/1").to route_to("user_role_permissions#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/user_role_permissions/1/edit").to route_to("user_role_permissions#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/user_role_permissions").to route_to("user_role_permissions#create")
    end

    it "routes to #update" do
      expect(:put => "/user_role_permissions/1").to route_to("user_role_permissions#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/user_role_permissions/1").to route_to("user_role_permissions#destroy", :id => "1")
    end

  end
end
