require 'rails_helper'

RSpec.describe "coaches/edit", :type => :view do
  before(:each) do
    @coach = assign(:coach, Coach.create!(
      :surname => "MyString",
      :givenname => "MyString",
      :picture => "MyString"
    ))
  end

  it "renders the edit coach form" do
    render

    assert_select "form[action=?][method=?]", coach_path(@coach), "post" do

      assert_select "input#coach_surname[name=?]", "coach[surname]"

      assert_select "input#coach_givenname[name=?]", "coach[givenname]"

      assert_select "input#coach_picture[name=?]", "coach[picture]"
    end
  end
end
