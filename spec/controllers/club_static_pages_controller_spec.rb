require 'rails_helper'

RSpec.describe ClubStaticPagesController, :type => :controller do

  describe "GET history" do
    it "returns http success" do
      get :history
      expect(response).to be_success
    end
  end

  describe "GET management" do
    it "returns http success" do
      get :management
      expect(response).to be_success
    end
  end

  describe "GET field" do
    it "returns http success" do
      get :field
      expect(response).to be_success
    end
  end

end
