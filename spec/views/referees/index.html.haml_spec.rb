require 'rails_helper'

RSpec.describe "referees/index", :type => :view do
  before(:each) do
    assign(:referees, [
      Referee.create!(
        :surname => "Surname",
        :givenname => "Givenname",
        :clubid => 1
      ),
      Referee.create!(
        :surname => "Surname",
        :givenname => "Givenname",
        :clubid => 1
      )
    ])
  end

  it "renders a list of referees" do
    render
    assert_select "tr>td", :text => "Surname".to_s, :count => 2
    assert_select "tr>td", :text => "Givenname".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
