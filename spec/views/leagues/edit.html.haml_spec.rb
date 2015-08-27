require 'rails_helper'

RSpec.describe "leagues/edit", :type => :view do
  before(:each) do
    @league = assign(:league, League.create!(
      :name => "MyString",
      :class_id => 1,
      :iscup => false,
      :isfemale => false,
      :noreferee => false
    ))
  end

  it "renders the edit league form" do
    render

    assert_select "form[action=?][method=?]", league_path(@league), "post" do

      assert_select "input#league_name[name=?]", "league[name]"

      assert_select "input#league_class_id[name=?]", "league[class_id]"

      assert_select "input#league_iscup[name=?]", "league[iscup]"

      assert_select "input#league_isfemale[name=?]", "league[isfemale]"

      assert_select "input#league_noreferee[name=?]", "league[noreferee]"
    end
  end
end
