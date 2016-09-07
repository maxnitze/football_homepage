require 'rails_helper'

RSpec.describe "teams/edit", :type => :view do
  before(:each) do
    @team = assign(:team, Team.create!(
      :name => "MyString",
      :ishometeam => false,
      :hometeamname => "MyString",
      :isfemale => false,
      :classid => 1
    ))
  end

  it "renders the edit team form" do
    render

    assert_select "form[action=?][method=?]", team_path(@team), "post" do

      assert_select "input#team_name[name=?]", "team[name]"

      assert_select "input#team_ishometeam[name=?]", "team[ishometeam]"

      assert_select "input#team_hometeamname[name=?]", "team[hometeamname]"

      assert_select "input#team_isfemale[name=?]", "team[isfemale]"

      assert_select "input#team_classid[name=?]", "team[classid]"
    end
  end
end
