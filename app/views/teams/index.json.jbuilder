json.array!(@teams) do |team|
  json.extract! team, :id, :name, :ishometeam, :hometeamname, :isfemale, :classid
  json.url team_url(team, format: :json)
end
