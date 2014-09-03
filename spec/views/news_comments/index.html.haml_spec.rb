require 'rails_helper'

RSpec.describe "news_comments/index", :type => :view do
  before(:each) do
    assign(:news_comments, [
      NewsComment.create!(
        :news_id => 1,
        :user_id => 2,
        :name => "Name",
        :email => "Email",
        :text => "Text"
      ),
      NewsComment.create!(
        :news_id => 1,
        :user_id => 2,
        :name => "Name",
        :email => "Email",
        :text => "Text"
      )
    ])
  end

  it "renders a list of news_comments" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Text".to_s, :count => 2
  end
end
