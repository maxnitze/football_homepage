require 'rails_helper'

RSpec.describe "user_role_permissions/index", :type => :view do
  before(:each) do
    assign(:user_role_permissions, [
      UserRolePermission.create!(
        :symbol => "Symbol",
        :description => "Description"
      ),
      UserRolePermission.create!(
        :symbol => "Symbol",
        :description => "Description"
      )
    ])
  end

  it "renders a list of user_role_permissions" do
    render
    assert_select "tr>td", :text => "Symbol".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
