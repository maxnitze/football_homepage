require 'rails_helper'

RSpec.describe "user_role_permissions/new", :type => :view do
  before(:each) do
    assign(:user_role_permission, UserRolePermission.new(
      :symbol => "MyString",
      :description => "MyString"
    ))
  end

  it "renders new user_role_permission form" do
    render

    assert_select "form[action=?][method=?]", user_role_permissions_path, "post" do

      assert_select "input#user_role_permission_symbol[name=?]", "user_role_permission[symbol]"

      assert_select "input#user_role_permission_description[name=?]", "user_role_permission[description]"
    end
  end
end
