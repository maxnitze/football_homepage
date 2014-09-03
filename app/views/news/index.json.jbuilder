json.array!(@news) do |news|
  json.extract! news, :id, :team_id, :topic, :author, :author_name, :created, :edit_count, :edit_time, :abstract, :text
  json.url news_url(news, format: :json)
end
