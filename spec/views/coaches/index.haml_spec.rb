require 'rails_helper'

RSpec.describe "coaches/index", :type => :view do
  before(:each) do
    assign(:coaches, [
      Coach.create!(
        :surname => "Surname",
        :givenname => "Givenname",
        :picture => "Picture"
      ),
      Coach.create!(
        :surname => "Surname",
        :givenname => "Givenname",
        :picture => "Picture"
      )
    ])
  end

  it "renders a list of coaches" do
    render
    assert_select "tr>td", :text => "Surname".to_s, :count => 2
    assert_select "tr>td", :text => "Givenname".to_s, :count => 2
    assert_select "tr>td", :text => "Picture".to_s, :count => 2
  end
end
