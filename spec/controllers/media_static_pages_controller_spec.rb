require 'rails_helper'

RSpec.describe MediaStaticPagesController, type: :controller do

  describe "GET #gallery" do
    it "returns http success" do
      get :gallery
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #downloads" do
    it "returns http success" do
      get :downloads
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #bettinggame" do
    it "returns http success" do
      get :bettinggame
      expect(response).to have_http_status(:success)
    end
  end

end
