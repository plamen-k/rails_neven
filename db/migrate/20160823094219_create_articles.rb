class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :slug
      t.string :thumbnail
      t.string :title
      t.string :tags
      t.text :body

      t.timestamps
    end
  end
end
