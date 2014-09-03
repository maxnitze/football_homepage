require 'rails_helper'

RSpec.describe "news/show", :type => :view do
  before(:each) do
    @news = assign(:news, News.create!(
      :team_id => 1,
      :topic => "Topic",
      :author => "",
      :author_name => "Author Name",
      :edit_count => 2,
      :abstract => "Abstract",
      :text => "Text"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/1/)
    expect(rendered).to match(/Topic/)
    expect(rendered).to match(//)
    expect(rendered).to match(/Author Name/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Abstract/)
    expect(rendered).to match(/Text/)
  end
end
