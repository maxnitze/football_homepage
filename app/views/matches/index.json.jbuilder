json.array!(@matches) do |match|
  json.extract! match, :id, :league_id, :matchday, :home_id, :guest_id, :start, :end, :goals_home, :goals_guest, :referee_id, :assistant1_id, :assistant2_id, :overtime, :penalty, :hncompete, :gncompete, :noreferee, :canceled, :enabled
  json.url match_url(match, format: :json)
end
