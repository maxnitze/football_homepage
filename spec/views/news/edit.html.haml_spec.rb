require 'rails_helper'

RSpec.describe "news/edit", :type => :view do
  before(:each) do
    @news = assign(:news, News.create!(
      :team_id => 1,
      :topic => "MyString",
      :author => "",
      :author_name => "MyString",
      :edit_count => 1,
      :abstract => "MyString",
      :text => "MyString"
    ))
  end

  it "renders the edit news form" do
    render

    assert_select "form[action=?][method=?]", news_path(@news), "post" do

      assert_select "input#news_team_id[name=?]", "news[team_id]"

      assert_select "input#news_topic[name=?]", "news[topic]"

      assert_select "input#news_author[name=?]", "news[author]"

      assert_select "input#news_author_name[name=?]", "news[author_name]"

      assert_select "input#news_edit_count[name=?]", "news[edit_count]"

      assert_select "input#news_abstract[name=?]", "news[abstract]"

      assert_select "input#news_text[name=?]", "news[text]"
    end
  end
end
