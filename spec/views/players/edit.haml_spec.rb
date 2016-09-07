require 'rails_helper'

RSpec.describe "players/edit", :type => :view do
  before(:each) do
    @player = assign(:player, Player.create!(
      :surname => "MyString",
      :givenname => "MyString",
      :picture => "MyString",
      :positionid => 1,
      :legid => 1
    ))
  end

  it "renders the edit player form" do
    render

    assert_select "form[action=?][method=?]", player_path(@player), "post" do

      assert_select "input#player_surname[name=?]", "player[surname]"

      assert_select "input#player_givenname[name=?]", "player[givenname]"

      assert_select "input#player_picture[name=?]", "player[picture]"

      assert_select "input#player_positionid[name=?]", "player[positionid]"

      assert_select "input#player_legid[name=?]", "player[legid]"
    end
  end
end
