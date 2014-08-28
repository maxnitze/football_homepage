json.array!(@players) do |player|
  json.extract! player, :id, :surname, :givenname, :birthday, :picture, :positionid, :legid
  json.url player_url(player, format: :json)
end
