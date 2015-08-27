json.array!(@leagues) do |league|
  json.extract! league, :id, :name, :start, :end, :class_id, :iscup, :isfemale, :noreferee
  json.url league_url(league, format: :json)
end
