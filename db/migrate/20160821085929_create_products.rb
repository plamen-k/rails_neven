class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :slug
      t.string :thubmnail
      t.string :title_en
      t.string :title_nb
      t.string :description_en
      t.string :description_nb
      t.string :tags
      t.string :tips_en
      t.string :tips_nb
      t.string :benefits_en
      t.string :benefits_nb
      t.boolean :featured
      t.references :categories, foreign_key: true

      t.timestamps
    end
  end
end
