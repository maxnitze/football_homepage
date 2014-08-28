require 'rails_helper'

RSpec.describe "coaches/new", :type => :view do
  before(:each) do
    assign(:coach, Coach.new(
      :surname => "MyString",
      :givenname => "MyString",
      :picture => "MyString"
    ))
  end

  it "renders new coach form" do
    render

    assert_select "form[action=?][method=?]", coaches_path, "post" do

      assert_select "input#coach_surname[name=?]", "coach[surname]"

      assert_select "input#coach_givenname[name=?]", "coach[givenname]"

      assert_select "input#coach_picture[name=?]", "coach[picture]"
    end
  end
end
