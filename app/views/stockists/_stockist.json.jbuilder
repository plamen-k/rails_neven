json.extract! stockist, :id, :slug, :title, :address, :lat, :lng, :thubmnail, :title_en, :title_nb, :created_at, :updated_at
json.url stockist_url(stockist, format: :json)