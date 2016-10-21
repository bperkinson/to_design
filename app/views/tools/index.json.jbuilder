json.array!(@tools) do |tool|
  json.extract! tool, :id, :name, :description, :image
  json.url tool_url(tool, format: :json)
end
