require 'rails_helper'

RSpec.describe "players/show", :type => :view do
  before(:each) do
    @player = assign(:player, Player.create!(
      :surname => "Surname",
      :givenname => "Givenname",
      :picture => "Picture",
      :positionid => 1,
      :legid => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Surname/)
    expect(rendered).to match(/Givenname/)
    expect(rendered).to match(/Picture/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
