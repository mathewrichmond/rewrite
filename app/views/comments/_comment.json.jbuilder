json.extract! comment, :id, :review_id, :position, :offset, :content, :created_at, :updated_at
json.url comment_url(comment, format: :json)