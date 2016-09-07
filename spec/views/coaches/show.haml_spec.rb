require 'rails_helper'

RSpec.describe "coaches/show", :type => :view do
  before(:each) do
    @coach = assign(:coach, Coach.create!(
      :surname => "Surname",
      :givenname => "Givenname",
      :picture => "Picture"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Surname/)
    expect(rendered).to match(/Givenname/)
    expect(rendered).to match(/Picture/)
  end
end
