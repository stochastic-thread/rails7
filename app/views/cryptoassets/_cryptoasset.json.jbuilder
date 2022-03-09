json.extract! cryptoasset, :id, :name, :description, :ticker, :created_at, :updated_at
json.url cryptoasset_url(cryptoasset, format: :json)
