require 'rails_helper'

RSpec.describe "users/new", :type => :view do
  before(:each) do
    assign(:user, User.new(
      :surname => "",
      :givenname => "",
      :email => ""
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input#user_surname[name=?]", "user[surname]"

      assert_select "input#user_givenname[name=?]", "user[givenname]"

      assert_select "input#user_email[name=?]", "user[email]"
    end
  end
end
