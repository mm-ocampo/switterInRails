json.array!(@comments) do |comment|
  json.extract! comment, :id, :comment, :username, :to_swit_id
  json.url comment_url(comment, format: :json)
end
