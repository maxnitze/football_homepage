require 'rails_helper'

RSpec.describe "teams/new", :type => :view do
  before(:each) do
    assign(:team, Team.new(
      :name => "MyString",
      :ishometeam => false,
      :hometeamname => "MyString",
      :isfemale => false,
      :classid => 1
    ))
  end

  it "renders new team form" do
    render

    assert_select "form[action=?][method=?]", teams_path, "post" do

      assert_select "input#team_name[name=?]", "team[name]"

      assert_select "input#team_ishometeam[name=?]", "team[ishometeam]"

      assert_select "input#team_hometeamname[name=?]", "team[hometeamname]"

      assert_select "input#team_isfemale[name=?]", "team[isfemale]"

      assert_select "input#team_classid[name=?]", "team[classid]"
    end
  end
end
