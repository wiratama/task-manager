json.extract! boarditem, :id, :created_at, :updated_at
json.url boarditem_url(boarditem, format: :json)
