json.array!(@swits) do |swit|
  json.extract! swit, :id, :username, :swit, :sweet_count, :sour_count
  json.url swit_url(swit, format: :json)
end
