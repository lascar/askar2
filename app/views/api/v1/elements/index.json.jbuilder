json.array!(@elements) do |element|
  json.extract! element, :id, :name, :description
  json.url element_url(element, format: :json)
end
