require 'rails_helper'

RSpec.describe "referees/new", :type => :view do
  before(:each) do
    assign(:referee, Referee.new(
      :surname => "MyString",
      :givenname => "MyString",
      :clubid => 1
    ))
  end

  it "renders new referee form" do
    render

    assert_select "form[action=?][method=?]", referees_path, "post" do

      assert_select "input#referee_surname[name=?]", "referee[surname]"

      assert_select "input#referee_givenname[name=?]", "referee[givenname]"

      assert_select "input#referee_clubid[name=?]", "referee[clubid]"
    end
  end
end
