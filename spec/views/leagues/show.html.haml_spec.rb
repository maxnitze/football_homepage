require 'rails_helper'

RSpec.describe "leagues/show", :type => :view do
  before(:each) do
    @league = assign(:league, League.create!(
      :name => "Name",
      :class_id => 1,
      :iscup => false,
      :isfemale => false,
      :noreferee => false
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
    expect(rendered).to match(/false/)
  end
end
