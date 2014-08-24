json.array!(@users) do |user|
  json.extract! user, :id, :surname, :givenname, :email
  json.url user_url(user, format: :json)
end
