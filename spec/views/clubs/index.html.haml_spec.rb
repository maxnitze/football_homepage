require 'rails_helper'

RSpec.describe "clubs/index", :type => :view do
  before(:each) do
    assign(:clubs, [
      Club.create!(
        :name => "Name",
        :officestreet => "Officestreet",
        :officepostalcode => "Officepostalcode",
        :officetown => "Officetown",
        :stadiumstreet => "Stadiumstreet",
        :stadiumpostalcode => "Stadiumpostalcode",
        :stadiumtown => "Stadiumtown",
        :homepage => "Homepage",
        :crest => "Crest",
        :description => "Description"
      ),
      Club.create!(
        :name => "Name",
        :officestreet => "Officestreet",
        :officepostalcode => "Officepostalcode",
        :officetown => "Officetown",
        :stadiumstreet => "Stadiumstreet",
        :stadiumpostalcode => "Stadiumpostalcode",
        :stadiumtown => "Stadiumtown",
        :homepage => "Homepage",
        :crest => "Crest",
        :description => "Description"
      )
    ])
  end

  it "renders a list of clubs" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Officestreet".to_s, :count => 2
    assert_select "tr>td", :text => "Officepostalcode".to_s, :count => 2
    assert_select "tr>td", :text => "Officetown".to_s, :count => 2
    assert_select "tr>td", :text => "Stadiumstreet".to_s, :count => 2
    assert_select "tr>td", :text => "Stadiumpostalcode".to_s, :count => 2
    assert_select "tr>td", :text => "Stadiumtown".to_s, :count => 2
    assert_select "tr>td", :text => "Homepage".to_s, :count => 2
    assert_select "tr>td", :text => "Crest".to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
