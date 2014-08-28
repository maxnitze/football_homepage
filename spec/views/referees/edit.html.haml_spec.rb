require 'rails_helper'

RSpec.describe "referees/edit", :type => :view do
  before(:each) do
    @referee = assign(:referee, Referee.create!(
      :surname => "MyString",
      :givenname => "MyString",
      :clubid => 1
    ))
  end

  it "renders the edit referee form" do
    render

    assert_select "form[action=?][method=?]", referee_path(@referee), "post" do

      assert_select "input#referee_surname[name=?]", "referee[surname]"

      assert_select "input#referee_givenname[name=?]", "referee[givenname]"

      assert_select "input#referee_clubid[name=?]", "referee[clubid]"
    end
  end
end
