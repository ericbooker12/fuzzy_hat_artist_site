json.extract! collection, :id, :name, :archive, :thumbnail, :gallery_id, :created_at, :updated_at
json.url collection_url(collection, format: :json)
