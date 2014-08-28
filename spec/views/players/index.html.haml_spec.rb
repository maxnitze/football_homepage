require 'rails_helper'

RSpec.describe "players/index", :type => :view do
  before(:each) do
    assign(:players, [
      Player.create!(
        :surname => "Surname",
        :givenname => "Givenname",
        :picture => "Picture",
        :positionid => 1,
        :legid => 2
      ),
      Player.create!(
        :surname => "Surname",
        :givenname => "Givenname",
        :picture => "Picture",
        :positionid => 1,
        :legid => 2
      )
    ])
  end

  it "renders a list of players" do
    render
    assert_select "tr>td", :text => "Surname".to_s, :count => 2
    assert_select "tr>td", :text => "Givenname".to_s, :count => 2
    assert_select "tr>td", :text => "Picture".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
