require 'rails_helper'

RSpec.describe "user_role_permissions/edit", :type => :view do
  before(:each) do
    @user_role_permission = assign(:user_role_permission, UserRolePermission.create!(
      :symbol => "MyString",
      :description => "MyString"
    ))
  end

  it "renders the edit user_role_permission form" do
    render

    assert_select "form[action=?][method=?]", user_role_permission_path(@user_role_permission), "post" do

      assert_select "input#user_role_permission_symbol[name=?]", "user_role_permission[symbol]"

      assert_select "input#user_role_permission_description[name=?]", "user_role_permission[description]"
    end
  end
end
