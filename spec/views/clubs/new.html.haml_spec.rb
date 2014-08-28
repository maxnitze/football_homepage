require 'rails_helper'

RSpec.describe "clubs/new", :type => :view do
  before(:each) do
    assign(:club, Club.new(
      :name => "MyString",
      :officestreet => "MyString",
      :officepostalcode => "MyString",
      :officetown => "MyString",
      :stadiumstreet => "MyString",
      :stadiumpostalcode => "MyString",
      :stadiumtown => "MyString",
      :homepage => "MyString",
      :crest => "MyString",
      :description => "MyString"
    ))
  end

  it "renders new club form" do
    render

    assert_select "form[action=?][method=?]", clubs_path, "post" do

      assert_select "input#club_name[name=?]", "club[name]"

      assert_select "input#club_officestreet[name=?]", "club[officestreet]"

      assert_select "input#club_officepostalcode[name=?]", "club[officepostalcode]"

      assert_select "input#club_officetown[name=?]", "club[officetown]"

      assert_select "input#club_stadiumstreet[name=?]", "club[stadiumstreet]"

      assert_select "input#club_stadiumpostalcode[name=?]", "club[stadiumpostalcode]"

      assert_select "input#club_stadiumtown[name=?]", "club[stadiumtown]"

      assert_select "input#club_homepage[name=?]", "club[homepage]"

      assert_select "input#club_crest[name=?]", "club[crest]"

      assert_select "input#club_description[name=?]", "club[description]"
    end
  end
end
