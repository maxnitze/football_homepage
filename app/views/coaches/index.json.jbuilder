json.array!(@coaches) do |coach|
  json.extract! coach, :id, :surname, :givenname, :birthday, :picture
  json.url coach_url(coach, format: :json)
end
