require 'rails_helper'

RSpec.describe "players/new", :type => :view do
  before(:each) do
    assign(:player, Player.new(
      :surname => "MyString",
      :givenname => "MyString",
      :picture => "MyString",
      :positionid => 1,
      :legid => 1
    ))
  end

  it "renders new player form" do
    render

    assert_select "form[action=?][method=?]", players_path, "post" do

      assert_select "input#player_surname[name=?]", "player[surname]"

      assert_select "input#player_givenname[name=?]", "player[givenname]"

      assert_select "input#player_picture[name=?]", "player[picture]"

      assert_select "input#player_positionid[name=?]", "player[positionid]"

      assert_select "input#player_legid[name=?]", "player[legid]"
    end
  end
end
