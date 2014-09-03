require 'rails_helper'

RSpec.describe "news_comments/new", :type => :view do
  before(:each) do
    assign(:news_comment, NewsComment.new(
      :news_id => 1,
      :user_id => 1,
      :name => "MyString",
      :email => "MyString",
      :text => "MyString"
    ))
  end

  it "renders new news_comment form" do
    render

    assert_select "form[action=?][method=?]", news_comments_path, "post" do

      assert_select "input#news_comment_news_id[name=?]", "news_comment[news_id]"

      assert_select "input#news_comment_user_id[name=?]", "news_comment[user_id]"

      assert_select "input#news_comment_name[name=?]", "news_comment[name]"

      assert_select "input#news_comment_email[name=?]", "news_comment[email]"

      assert_select "input#news_comment_text[name=?]", "news_comment[text]"
    end
  end
end
