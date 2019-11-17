json.extract! ejuice, :id, :name, :fp, :flavor, :desc, :rating, :created_at, :updated_at
json.url ejuice_url(ejuice, format: :json)
