require 'rails_helper'

RSpec.describe "news_comments/show", :type => :view do
  before(:each) do
    @news_comment = assign(:news_comment, NewsComment.create!(
      :news_id => 1,
      :user_id => 2,
      :name => "Name",
      :email => "Email",
      :text => "Text"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Email/)
    expect(rendered).to match(/Text/)
  end
end
