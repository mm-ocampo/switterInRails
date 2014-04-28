json.array!(@comments) do |comment|
  json.extract! comment, :id, :to_user, :username, :swit, :sweet_count, :sour_count
  json.url comment_url(comment, format: :json)
end
