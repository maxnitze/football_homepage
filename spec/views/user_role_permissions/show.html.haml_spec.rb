require 'rails_helper'

RSpec.describe "user_role_permissions/show", :type => :view do
  before(:each) do
    @user_role_permission = assign(:user_role_permission, UserRolePermission.create!(
      :symbol => "Symbol",
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Symbol/)
    expect(rendered).to match(/Description/)
  end
end
