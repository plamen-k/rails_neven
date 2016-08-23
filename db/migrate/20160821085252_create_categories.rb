class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :slug
      t.string :thumbnail
      t.string :title_en
      t.string :title_nb
      t.string :description_en
      t.string :description_nb

      t.timestamps
    end
  end
end
