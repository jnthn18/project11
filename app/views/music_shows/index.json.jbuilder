json.array!(@music_shows) do |music_show|
  json.extract! music_show, :id, :band_name, :location, :date_of_show, :ticket_price
  json.url music_show_url(music_show, format: :json)
end
