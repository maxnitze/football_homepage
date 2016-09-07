require 'rails_helper'

RSpec.describe "news/index", :type => :view do
  before(:each) do
    assign(:news, [
      News.create!(
        :team_id => 1,
        :topic => "Topic",
        :author => "",
        :author_name => "Author Name",
        :edit_count => 2,
        :abstract => "Abstract",
        :text => "Text"
      ),
      News.create!(
        :team_id => 1,
        :topic => "Topic",
        :author => "",
        :author_name => "Author Name",
        :edit_count => 2,
        :abstract => "Abstract",
        :text => "Text"
      )
    ])
  end

  it "renders a list of news" do
    render
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Topic".to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
    assert_select "tr>td", :text => "Author Name".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => "Abstract".to_s, :count => 2
    assert_select "tr>td", :text => "Text".to_s, :count => 2
  end
end
