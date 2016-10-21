json.array!(@landings) do |landing|
  json.extract! landing, :id, :image, :title, :description, :about, :about_sub, :philosophy
  json.url landing_url(landing, format: :json)
end
