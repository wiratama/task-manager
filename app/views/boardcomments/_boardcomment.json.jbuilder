json.extract! boardcomment, :id, :created_at, :updated_at
json.url boardcomment_url(boardcomment, format: :json)
