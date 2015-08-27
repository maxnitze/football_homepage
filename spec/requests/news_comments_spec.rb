require 'rails_helper'

RSpec.describe "NewsComments", :type => :request do
  describe "GET /news_comments" do
    it "works! (now write some real specs)" do
      get news_comments_path
      expect(response.status).to be(200)
    end
  end
end
