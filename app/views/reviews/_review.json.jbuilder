json.extract! review, :id, :user_id, :document_id, :base_revieion, :created_at, :updated_at
json.url review_url(review, format: :json)