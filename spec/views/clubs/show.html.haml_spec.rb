require 'rails_helper'

RSpec.describe "clubs/show", :type => :view do
  before(:each) do
    @club = assign(:club, Club.create!(
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
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/Officestreet/)
    expect(rendered).to match(/Officepostalcode/)
    expect(rendered).to match(/Officetown/)
    expect(rendered).to match(/Stadiumstreet/)
    expect(rendered).to match(/Stadiumpostalcode/)
    expect(rendered).to match(/Stadiumtown/)
    expect(rendered).to match(/Homepage/)
    expect(rendered).to match(/Crest/)
    expect(rendered).to match(/Description/)
  end
end
