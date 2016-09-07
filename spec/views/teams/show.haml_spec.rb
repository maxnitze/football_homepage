require 'rails_helper'

RSpec.describe "teams/show", :type => :view do
  before(:each) do
    @team = assign(:team, Team.create!(
      :name => "Name",
      :ishometeam => false,
      :hometeamname => "Hometeamname",
      :isfemale => false,
      :classid => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/Hometeamname/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/1/)
  end
end
