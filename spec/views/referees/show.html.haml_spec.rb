require 'rails_helper'

RSpec.describe "referees/show", :type => :view do
  before(:each) do
    @referee = assign(:referee, Referee.create!(
      :surname => "Surname",
      :givenname => "Givenname",
      :clubid => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Surname/)
    expect(rendered).to match(/Givenname/)
    expect(rendered).to match(/1/)
  end
end
