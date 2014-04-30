json.array!(@sweets) do |sweet|
  json.extract! sweet, :id, :swit_id, :username
  json.url sweet_url(sweet, format: :json)
end
