json.extract! hero, :id, :video, :image, :title_en, :title_nb, :created_at, :updated_at
json.url hero_url(hero, format: :json)