require 'rails_helper'

RSpec.describe "leagues/index", :type => :view do
  before(:each) do
    assign(:leagues, [
      League.create!(
        :name => "Name",
        :class_id => 1,
        :iscup => false,
        :isfemale => false,
        :noreferee => false
      ),
      League.create!(
        :name => "Name",
        :class_id => 1,
        :iscup => false,
        :isfemale => false,
        :noreferee => false
      )
    ])
  end

  it "renders a list of leagues" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
    assert_select "tr>td", :text => false.to_s, :count => 2
  end
end
