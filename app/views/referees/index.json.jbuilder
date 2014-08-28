json.array!(@referees) do |referee|
  json.extract! referee, :id, :surname, :givenname, :clubid
  json.url referee_url(referee, format: :json)
end
