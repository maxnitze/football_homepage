require 'rails_helper'

RSpec.describe GeneralStaticPagesController, :type => :controller do

  describe "GET contact" do
    it "returns http success" do
      get :contact
      expect(response).to be_success
    end
  end

  describe "GET help" do
    it "returns http success" do
      get :help
      expect(response).to be_success
    end
  end

  describe "GET home" do
    it "returns http success" do
      get :home
      expect(response).to be_success
    end
  end

  describe "GET site_notice" do
    it "returns http success" do
      get :site_notice
      expect(response).to be_success
    end
  end
end
