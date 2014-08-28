json.array!(@clubs) do |club|
  json.extract! club, :id, :name, :officestreet, :officepostalcode, :officetown, :stadiumstreet, :stadiumpostalcode, :stadiumtown, :homepage, :crest, :description
  json.url club_url(club, format: :json)
end
